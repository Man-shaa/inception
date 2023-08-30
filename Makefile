all: build

build:
	@mkdir -p ${HOME}/inception_data/mariadb
	@mkdir -p ${HOME}/inception_data/wordpress
	@docker-compose -f srcs/docker-compose.yml up --build

clean: stop
	docker system prune -a -f --volumes

clear: clean
	docker volume rm srcs_wordpress srcs_mariadb

stop:
	docker-compose -f srcs/docker-compose.yml down

re: clear all

show:
	docker ps
	docker volume ls -q
	docker container ls -q

logs:
	docker logs wordpress
	docker logs mariadb
	docker logs nginx


.PHONY: build clean stop re clear show logs
