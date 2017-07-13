# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tle-meur <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/12/15 12:23:15 by tle-meur          #+#    #+#              #
#    Updated: 2015/12/29 11:09:48 by tle-meur         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	=	libftprintf.a

FLAGS	=	-Wall -Wextra -Werror

INCLUDE	=	writes/ reads/ libft/

SRCS	=	ft_printf.c

SRCSWR	=	ft_itoas_bases.c space_chars.c utilities.c write_doubles.c \
			write_scientist.c write_extra.c

SRCSRD	=	check_arg.c check_cs.c check_dioux.c check_format.c check_bin.c \
			fill.c

SRCSFT	=	ft_memrealloc.c ft_strnew.c ft_memdel.c ft_memalloc.c ft_memset.c \
			ft_memcpy.c ft_atoi.c ft_isdigit.c ft_memmove.c ft_strdup.c \
			ft_strlen.c ft_strncpy.c

OBJSFT	=	$(SRCSFT:.c=.o)

OBJSWR	=	$(SRCSWR:.c=.o)

OBJSRD	=	$(SRCSRD:.c=.o)

OBJS	=	$(SRCS:.c=.o) $(OBJSFT) $(OBJSWR) $(OBJSRD)


all		:	$(NAME)

$(NAME)	:
			cd libft/; gcc -c $(FLAGS) $(SRCSFT); mv $(OBJSFT) ../
			cd writes/; gcc -c $(FLAGS) $(SRCSWR); mv $(OBJSWR) ../
			cd reading/; gcc -c $(FLAGS) $(SRCSRD); mv $(OBJSRD) ../
			gcc -c $(FLAGS) $(SRCS)
			ar rc $(NAME) $(OBJS)
			ranlib $(NAME)

clean	:
			rm -f $(OBJS)

fclean	:	clean
			rm -f $(NAME)

re		:	fclean $(NAME)

simple	:	re
			rm -f $(OBJS)

.PHONY	:	all clean fclean simple re
