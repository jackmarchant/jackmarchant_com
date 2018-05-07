COMPOSE_FILE?=docker-compose.yml
COMPOSE=docker-compose
# Initialise the environment and run updates (only needed on first setup)
init: clean build up

# Build or update the container images
build:
	$(COMPOSE) pull
	$(COMPOSE) build

update: composer-install

composer-dump-autoload:
	$(COMPOSE) run --rm composer dump-autoload -o

composer-install:
	$(COMPOSE) run --rm composer -nov install

composer-update:
	$(COMPOSE) run --rm composer -nov update

composer-refresh-lock:
	$(COMPOSE) run --rm composer -nov update --lock

composer-require: PACKAGE?=
composer-require:
	$(COMPOSE) run --rm composer require $(PACKAGE)

composer-require-dev: PACKAGE?=
composer-require-dev:
	$(COMPOSE) run --rm composer require --dev $(PACKAGE)

up:
	$(COMPOSE) up -d

down:
	$(COMPOSE) down

# Tail the docker compose logs
logs:
	$(COMPOSE) logs -f

# Kill the container app and remove all the containers
clean:
	$(COMPOSE) kill
	$(COMPOSE) rm --force

bash:
	$(COMPOSE) exec web /bin/bash