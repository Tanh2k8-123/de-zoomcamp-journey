"""Small local DataFrame/SQL exercise; no taxi download required."""
import argparse
from pyspark.sql import SparkSession, functions as F


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--output', default='data/demo_report')
    args = parser.parse_args()
    spark = SparkSession.builder.master('local[2]').appName('taxi-learning').getOrCreate()
    try:
        trips = spark.createDataFrame(
            [('Green', 79, 10.50), ('Green', 79, 20.25), ('Yellow', 132, 30.00)],
            'service_type string, pickup_location_id int, total_amount double',
        ).withColumn('total_amount', F.col('total_amount').cast('decimal(18,2)'))
        report = trips.groupBy('service_type', 'pickup_location_id').agg(
            F.count('*').alias('trip_count'), F.sum('total_amount').alias('revenue')
        )
        report.explain()
        report.orderBy('service_type', 'pickup_location_id').show()
        # Existing output is preserved; select a new path for another run.
        report.write.mode('errorifexists').parquet(args.output)
    finally:
        spark.stop()


if __name__ == '__main__':
    main()
