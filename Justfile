default:
  just --list

start:
	docker compose up

[working-directory: 'packs/kochmine']
build:
	packwiz mr export

[working-directory: 'packs/kochmine']
serve:
	packwiz serve

stop: 
	docker compose down

clean: stop
	rm -rf ./minecraft-data

restart: stop start

clean-restart: clean start