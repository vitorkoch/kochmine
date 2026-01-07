clean:
	docker-compose down
	rm -rf data

start:
	docker-compose up

restart: clean start