"""Aggregate prepared green/yellow Parquet inputs using configurable paths."""
import argparse
from pyspark.sql import SparkSession, functions as F


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--input-green', required=True)
    parser.add_argument('--input-yellow', required=True)
    parser.add_argument('--output', required=True)
    parser.add_argument('--master', default='local[2]')
    args = parser.parse_args()
    spark = SparkSession.builder.master(args.master).appName('taxi-monthly-revenue').getOrCreate()
    try:
        frames = []
        for service, path, timestamp in (
            ('Green', args.input_green, 'lpep_pickup_datetime'),
            ('Yellow', args.input_yellow, 'tpep_pickup_datetime'),
        ):
            frames.append(spark.read.parquet(path).select(
                F.col(timestamp).cast('timestamp').alias('pickup_datetime'),
                F.col('PULocationID').cast('int').alias('pickup_location_id'),
                F.col('total_amount').cast('decimal(18,2)').alias('total_amount'),
                F.lit(service).alias('service_type'),
            ))
        trips = frames[0].unionByName(frames[1])
        report = trips.withColumn('revenue_month', F.date_trunc('month', 'pickup_datetime')).groupBy(
            'revenue_month', 'pickup_location_id', 'service_type'
        ).agg(F.count('*').alias('trip_count'), F.sum('total_amount').alias('revenue'))
        # Do not silently overwrite an existing result.
        report.write.mode('errorifexists').parquet(args.output)
    finally:
        spark.stop()


if __name__ == '__main__':
    main()
