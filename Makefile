.PHONY: up down pull

up:
	docker compose up -d

down:
	docker compose down

pull:
	docker compose pull
