clean:
	rm -rf data

start:
	docker compose up

stop: 
	docker compose down

restart: clean start