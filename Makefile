COMPOSE_FILE?=docker-compose.yml
COMPOSE=docker-compose
# Initialise the environment and run updates (only needed on first setup)
init: clean build up

# Build or update the container images
build:
	$(COMPOSE) pull
	$(COMPOSE) build

up:
	$(COMPOSE) up -d

down:
	$(COMPOSE) down

reload:
	$(COMPOSE) down 
	$(COMPOSE) up

# Tail the docker compose logs
logs:
	$(COMPOSE) logs -f

# Kill the container app and remove all the containers
clean:
	$(COMPOSE) kill
	$(COMPOSE) rm --force

bash:
	$(COMPOSE) exec web /bin/bash