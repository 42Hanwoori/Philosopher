# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: whan <whan@student.42.fr>                  +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/09/07 09:36:13 by whan              #+#    #+#              #
#    Updated: 2021/11/29 22:15:31 by whan             ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME			= philo

CC				= gcc
CFLAGS			= -Wall -Werror -Wextra

INCS			= -I.

SRCS			= philo.c \
					utils.c \
					init.c

OBJS_DIR		= objs
OBJS			= $(addprefix $(OBJS_DIR)/, $(SRCS:.c=.o))

$(NAME)			: $(OBJS)
					$(CC) $(CFLAGS) $(INCS) $(OBJS) -o $@

$(OBJS_DIR)/%.o	: %.c
					mkdir -p $(OBJS_DIR)
					$(CC) $(CFLAGS) $(INCS) -c $< -o $@

all				: $(NAME)

clean			:
					rm -rf $(OBJS_DIR)

fclean			: clean
					rm -rf $(NAME)

re				: fclean all

.PHONY			: all clean fclean re bonus
