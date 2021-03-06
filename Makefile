##
## Makefile in /home/arnhol_m/rendu/Supinfo/arc/b_wheeler
## 
## Made by Arnholz Martin
## Login : arnhol_m
## 
## Started on  Mon Jan  4 23:32:10 2016 
## Last update Thu May 12 17:16:24 2016 
##

CC	= gcc -g3

CFLAGS	= -W -Wall -Wextra -I./inc/

RM	= rm -rf

NAME	= affthat

SRC	= src/main.c \
	  src/basic.c \
	  src/affthat.c

OBJS	= $(SRC:.c=.o)

all	: $(NAME)
	@echo "$(NAME) \\033[1;36m COMPILATION FINISHED \\033[0;39m"

.c.o	:
	 @$(CC) $(CFLAGS) -c -o $@ $<
	 @echo " $(CC) $(CFLAGS) -c -o $@ $< \\033[1;32m OK \\033[0;39m"

$(NAME) : $(OBJS)
	$(CC) -o $(NAME) $(OBJS) $(CFLAGS)

clean	:
	@echo "\\033[1;31m ----------STARTING FAST CLEANING---------- \\033[0;39m"
	@$(RM) $(OBJS)
	@$(RM) *~
	@echo " $(RM) $(OBJS) \\033[1;31m DELETING \\033[0;39m"
	@echo " $(RM) *~ \\033[1;31m DELETING \\033[0;39m"
	@echo "\\033[1;31m ----------END OF FAST CLEANING---------- \\033[0;39m"

fclean	: 
	@echo "\\033[1;31m ----------STARTING ADVANCED CLEANING---------- \\033[0;39m"
	@$(RM) $(OBJS)
	@$(RM) *~
	@$(RM) $(NAME)
	@echo " $(RM) $(OBJS) \\033[1;31m DELETING\\033[0;39m"
	@echo " $(RM) $(NAME) \\033[1;31m DELETING BINARY \\033[0;39m"
	@echo "\\033[1;31m ----------END OF ADVANCED CLEANING---------- \\033[0;39m"

re	: fclean all

.PHONY	: fclean all re clean
