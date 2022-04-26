SRCS	=

OBJS	= ${SRCS:.c=.o}

FLAGS	= -Wall -Wextra -Werror

NAME	= 

.c.o:
	@ gcc ${FLAGS} -c $< -o ${<:.c=.o}

#lib:
#	@ make -C libft --silent

${NAME}:	${OBJS}

all:	${NAME}

clean:	${OBJS}
	@ rm -rf ${OBJS}

fclean:	clean
	@ rm -rf ${NAME}

re:	fclean all