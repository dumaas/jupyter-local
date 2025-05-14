# dcl -> docker-compose location
dcl = -f ./docker/docker-compose.yaml

# Docker
bootstrap: build up

build:
	docker compose $(dcl) rm -vsf
	docker compose $(dcl) build jupyter

up:
	docker compose $(dcl) up -d

logs:
	docker compose $(dcl) up

down:
	docker compose $(dcl) down --remove-orphans

ecr-login:
	aws ecr get-login-password --region us-west-2 | docker login --username AWS --password-stdin 654654546452.dkr.ecr.us-west-2.amazonaws.com

bash:
	docker compose $(dcl) run --rm --entrypoint=bash jupyter
