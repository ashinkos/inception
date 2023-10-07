all: up

build:
	mkdir -p /home/aouni/data/wp_data
	mkdir -p /home/aouni/data/db_data
	docker compose -f srcs/docker-compose.yaml build

up: build
	docker compose -f srcs/docker-compose.yaml up -d

stop:
	docker compose -f srcs/docker-compose.yaml stop

down:
	docker compose -f srcs/docker-compose.yaml down --rmi all --volumes

clean: down
	docker system prune -af

fclean: clean
	sudo rm -rf /home/aouni/data/wp_data
	sudo rm -rf /home/aouni/data/db_data

re: fclean up