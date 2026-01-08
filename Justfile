default:
  just --list

start:
	docker compose up -d

[working-directory: 'packs/kochmine']
build:
	packwiz mr export

stop: 
	docker compose down

clean: stop
	rm -rf ./minecraft-data

restart: stop start

clean-restart: clean start