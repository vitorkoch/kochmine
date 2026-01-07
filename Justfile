start:
	docker compose up

stop: 
	docker compose down

clean: stop
	rm -rf ./minecraft-data

install-client:
	cp -r ./content/mods/** ~/.minecraft/mods
	cp -r ./only-client/resourcepacks/** ~/.minecraft/resourcepacks
	cp -r ./only-client/shaderpacks/** ~/.minecraft/shaderpacks


restart: clean start