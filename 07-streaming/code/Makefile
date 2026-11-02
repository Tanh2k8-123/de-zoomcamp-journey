.PHONY: build up down job aggregation_job demo_job
build:
	docker compose build
up:
	docker compose up --build -d
down:
	docker compose down
job:
	docker compose exec jobmanager ./bin/flink run -py /opt/src/job/pass_through_job.py --pyFiles /opt/src -d
aggregation_job:
	docker compose exec jobmanager ./bin/flink run -py /opt/src/job/aggregation_job.py --pyFiles /opt/src -d
demo_job:
	docker compose exec jobmanager ./bin/flink run -py /opt/src/job/aggregation_job_demo.py --pyFiles /opt/src -d
