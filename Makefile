# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lorenuar <lorenuar@student.s19.be>         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/04/30 12:37:01 by ancoulon          #+#    #+#              #
#    Updated: 2020/05/01 14:16:56 by lorenuar         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		= mini-tcp

CC			= gcc

RM			= rm -f

MAKE		= make

CFLAGS		= -Wall -Wextra -Werror

SRCS		= hash_file.c client.c

OBJS		= $(SRCS:.c=.o)

CL_GREY		= \033[38;2;128;128;128m

CL_GREEN	= \033[38;2;0;153;0m

CL_RESET	= \033[0m

.c.o:
			@${CC} ${CFLAGS} -c $^ -o $@

all:		$(NAME)

$(NAME):	$(OBJS)
			$(CC) -o $(NAME) $(OBJS)

clean:
			$(RM) $(OBJS)

fclean:		clean
			$(RM) $(NAME)

re:			fclean all

run: re
	./$(NAME) challenge.cln.ac 1942

.PHONY:		all clean fclean re run
