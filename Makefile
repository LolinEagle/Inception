# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: frrusso <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/03/06 13:58:27 by frrusso           #+#    #+#              #
#    Updated: 2023/03/06 13:58:30 by frrusso          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	=	Inception
COMPOSE	=	docker compose -f ./srcs/docker-compose.yml

all:${NAME}

clean:
	rm -rf ${HOME}/data/mariadb
	rm -rf ${HOME}/data/wordpress
	${COMPOSE} down -v

fclean:clean

re:fclean
	make all

stop:
	${COMPOSE} stop

prune:fclean
	docker system prune -af

subject:
	docker stop $(docker ps -qa); \
	docker rm $(docker ps -qa); \
	docker rmi -f $(docker images -qa); \
	docker volume rm $(docker volume ls -q); \
	docker network rm $(docker network ls -q) 2>/dev/null

${NAME}:
	mkdir -p ${HOME}/data/mariadb
	mkdir -p ${HOME}/data/wordpress
	${COMPOSE} build
	${COMPOSE} up

.PHONY:all clean fclean re stop prune subject
