build:
	docker compose build

up:
	docker compose up -d

setup: create migrate seed up

down:
	docker compose down -v --remove-orphans

restart: down up

# --- Database Commands ---

create_test:
	sudo docker compose run --rm web rails db:create RAILS_ENV=test
	sudo docker compose run --rm web rails db:migrate RAILS_ENV=test

create:
	docker compose run --rm web rails db:create

migrate:
	docker compose run --rm web rails db:migrate

rollback:
	docker compose run --rm web rails db:rollback

seed:
	docker compose run --rm web rails db:seed

# --- Utilities ---

console:
	docker compose exec web rails c

logs:
	docker compose logs -f web

ps:
	docker compose ps

rspec:
	docker compose run --rm web rspec

routes:
	docker compose run --rm web rails routes
