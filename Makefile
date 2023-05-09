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
	${COMPOSE} down -v

fclean:clean

re:fclean
	make all

stop:
	${COMPOSE} stop

prune:
	docker system prune -af

${NAME}:
	mkdir -p ${HOME}/data/mariadb
	mkdir -p ${HOME}/data/wordpress
	${COMPOSE} build
	${COMPOSE} up

.PHONY:all clean fclean re stop prune
