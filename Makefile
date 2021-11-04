# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    Makefile                                           :+:    :+:             #
#                                                      +:+                     #
#    By: akramp <marvin@codam.nl>                     +#+                      #
#                                                    +#+                       #
#    Created: 2019/10/28 13:32:36 by akramp         #+#    #+#                 #
#    Updated: 2020/01/11 21:07:44 by akramp        ########   odam.nl          #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

FLAGS = -Wall -Werror -Wextra

CC = gcc

SRC = 	./ft_memset.c ./ft_bzero.c \
		./ft_memcpy.c ./ft_memccpy.c \
		./ft_memmove.c ./ft_memchr.c \
		./ft_memcmp.c ./ft_strlen.c \
		./ft_strlcpy.c ./ft_strlcat.c \
		./ft_strchr.c ./ft_strrchr.c \
		./ft_strnstr.c ./ft_strncmp.c \
		./ft_atoi.c ./ft_isalpha.c \
		./ft_isdigit.c ./ft_isalnum.c \
		./ft_isascii.c ./ft_isprint.c \
		./ft_toupper.c ./ft_tolower.c \
		./ft_strdup.c ./ft_calloc.c 

SRC_2 = ./ft_substr.c ./ft_strjoin.c \
		./ft_strtrim.c ./ft_split.c \
		./ft_itoa.c ./ft_strmapi.c \
		./ft_putchar_fd.c ./ft_putstr_fd.c \
		./ft_putendl_fd.c ./ft_putnbr_fd.c
		

SRC_B = ./ft_lstnew_bonus.c ./ft_lstadd_front_bonus.c \
		./ft_islower_bonus.c ./ft_isupper_bonus.c \
		./ft_isspace_bonus.c ./ft_lstsize_bonus.c \
		./ft_lstlast_bonus.c ./ft_lstadd_back_bonus.c \
		./ft_lstiter_bonus.c ./ft_lstclear_bonus.c \
		./ft_lstdelone_bonus.c  ./ft_lstmap_bonus.c

OBJ :=	${SRC:%.c=%.o}

OBJ_2 :=	${SRC_2:%.c=%.o}

OBJ_B :=	${SRC_B:%.c=%.o}

PINK	= 	\033[38;5;206m
PINK2	= \033[38;5;225m
WHITE	= \033[38;5;96m
X		= \033[38;5;
Y		= 1
Z		= m
TZE		= $(eval Y=$(shell echo $$((($(Y)%15)+1))))
LI		= 0
BLUE = \033[38;5;33m
RED = \033[38;5;160m
GREEN = \033[38;5;112m
RANDOM := $$((RANDOM % 10))

all: $(NAME)
	
%.o: %.c
	@echo "$(X)$(Y)$(Z)✿	Compiling $@$(WHITE)\n"
	$(TZE)
	@$(CC) $(FLAGS) -c -o $@ $<

$(NAME):say $(OBJ) $(OBJ_2)
	@ar -rc $(NAME) $(OBJ) $(OBJ_2)
	@echo "$(WHITE)--------------------------------"
	@echo "$(PINK2)✨	Compilation Done! $(WHITE)"
	
bonus: say_b $(OBJ) $(OBJ_2) $(OBJ_B)
	@ar -rc $(NAME) $(OBJ) $(OBJ_2) $(OBJ_B)
	@echo "$(WHITE)--------------------------------"
	@echo "$(PINK2)✨	Bonus Done! $(WHITE)"

say:
	@echo "\n$(X)$(Y)$(Z)  _       ___     ___      ___   _____  ";
	$(TZE)
	@echo "$(X)$(Y)$(Z) | |     |_ _|   | _ )    | __| |_   _| ";
	$(TZE)
	@echo "$(X)$(Y)$(Z) | |__    | |    | _ \    | _|    | |   ";
	$(TZE)
	@echo "$(X)$(Y)$(Z) |____|  |___|   |___/   _|_|_   _|_|_  ";
	@echo "$(PINK)|\"\"\"\"\"|_|\"\"\"\"\"|_|\"\"\"\"\"|_| \"\"\" |_|\"\"\"\"\"| ";
	@echo "\`-0-0-'\"\`-0-0-'\"\`-0-0-'\"\`-0-0-'\"\`-0-0-' ";
	@echo "\n$(PINK2)🦄	Library Compilation $(PINK) $(WHITE)"
	@echo "$(WHITE)--------------------------------\n"

say_b:
	@echo "\n$(WHITE)";
	@echo "$(X)$(Y)$(Z)          )     )       (     ";
	$(TZE)
	@echo "$(X)$(Y)$(Z)    (  ( /(  ( /(       )\ )  ";
	$(TZE)
	@echo "$(X)$(Y)$(Z)  ( )\ )\()) )\())   ( (()/(  ";
	$(TZE)
	@echo "$(X)$(Y)$(Z)  )((_|(_)\ ((_)\    )\ /(_)) ";
	$(TZE)
	@echo "$(X)$(Y)$(Z) ((_)_  ((_) _((_)_ ((_|_))   ";
	@echo "$(PINK)  | _ )/ _ \| \| | | | / __|  ";
	@echo "  | _ \ (_) | .\` | |_| \__ \  ";
	@echo "  |___/\___/|_|\_|\___/|___/  ";
	@echo "                             ";
	@echo "\n$(PINK2)🦄	Bonus Compilation $(PINK) $(WHITE)"
	@echo "$(WHITE)--------------------------------\n"

clean:
	@echo "$(PINK)🦄	Cleaning ...$(WHITE)\n"
	rm -f $(OBJ) $(OBJ_2) $(OBJ_B)
	rm -f ./*~ ./*#
	@echo "\n$(PINK2)✨	Cleaning Done!$(WHITE)"
	
fclean: clean
	@echo "$(PINK)🦄	Removing $(NAME) ...\n$(WHITE)"
	-rm -f $(NAME)
	@echo "\n$(PINK2)✨	Removed $(NAME)!$(WHITE)"

matrix:
	@number=1 ; while [[ $$number -le 100 ]] ; do \
        echo "$(GREEN)$(RANDOM)\t$(RANDOM) $(RANDOM) $(RANDOM) $(RANDOM)\t $(RANDOM) \t$(RANDOM) $(RANDOM)\
		$(GREEN)$(RANDOM)\t$(RANDOM) $(RANDOM) $(RANDOM) $(RANDOM)\t $(RANDOM) \t$(RANDOM) $(RANDOM)\
		$(GREEN)$(RANDOM)\t$(RANDOM) $(RANDOM) \t$(RANDOM) $(RANDOM)\t $(RANDOM) \t$(RANDOM) $(RANDOM)\
		$(GREEN)$(RANDOM)\t$(RANDOM)\t $(RANDOM) $(RANDOM) $(RANDOM) $(RANDOM) \t$(RANDOM) $(RANDOM)" ; \
		sleep 0.05 ; \
        ((number = number + 1)) ; \
    done

target:
    num1=1 ; while [[ $$num1 -le 4 ]] ; do \
        num2=1 ; while [[ $$num2 -le 3 ]] ; do \
            echo $$num1 $$num2 ; \
            ((num2 = num2 + 1)) ; \
        done ; \
        ((num1 = num1 + 1)) ; \
    done
	
party:
	@clear
	@echo "$(GREEN)	ﾟ✧\n			$(BLUE)			ﾟ✧";
	@echo "$(RED)				ﾟ✧\n	$(BLUE)	ﾟ✧$(GREEN)					ﾟ✧";
	@echo "$(GREEN)			ﾟ✧\n			$(BLUE)			ﾟ✧";
	@echo "$(GREEN)ﾟ✧$(RED)				ﾟ✧\n	$(BLUE)	 ﾟ✧";
	@echo "$(BLUE)~..	$(RED)ﾟ✧$(BLUE)	ヽ(ﾟｰﾟ*ヽ)$(RED)ヽ(*ﾟｰﾟ*)ﾉ$(GREEN)(ﾉ*ﾟｰﾟ)ﾉ	$(RED)✧ﾟ$(GREEN)	..~";
	@sleep 0.3
	@clear
	@echo "$(RED)	ﾟ✧\n			$(GREEN)		ﾟ✧";
	@echo "$(BLUE)				ﾟ✧\n	$(GREEN)	ﾟ✧$(RED)					ﾟ✧";
	@echo "$(BLUE)			ﾟ✧\n		$(RED)		ﾟ✧";
	@echo "$(BLUE)ﾟ✧$(GREEN)					ﾟ✧\n	$(RED)	 ﾟ✧";
	@echo "$(GREEN)~..	$(BLUE)ﾟ✧$(BLUE)	ヽ(ﾟｰﾟ*ヽ)$(RED)ヽ(*ﾟｰﾟ*)ﾉ$(GREEN)(ﾉ*ﾟｰﾟ)ﾉ	$(RED)✧ﾟ$(GREEN)	..~";
	@sleep 0.3
	@clear
	@echo "$(GREEN)	ﾟ✧\n			$(BLUE)			ﾟ✧";
	@echo "$(RED)				ﾟ✧\n	$(BLUE)	ﾟ✧$(GREEN)					ﾟ✧";
	@echo "$(GREEN)			ﾟ✧\n			$(BLUE)			ﾟ✧";
	@echo "$(GREEN)ﾟ✧$(RED)				ﾟ✧\n	$(BLUE)	 ﾟ✧";
	@echo "$(BLUE)~..	$(RED)ﾟ✧$(BLUE)	ヽ(ﾟｰﾟ*ヽ)$(RED)ヽ(*ﾟｰﾟ*)ﾉ$(GREEN)(ﾉ*ﾟｰﾟ)ﾉ	$(RED)✧ﾟ$(GREEN)	..~";
	@sleep 0.3
	@clear
	@echo "$(RED)	ﾟ✧\n			$(GREEN)		ﾟ✧";
	@echo "$(BLUE)				ﾟ✧\n	$(GREEN)	ﾟ✧$(RED)					ﾟ✧";
	@echo "$(BLUE)			ﾟ✧\n		$(RED)		ﾟ✧";
	@echo "$(BLUE)ﾟ✧$(GREEN)					ﾟ✧\n	$(RED)	 ﾟ✧";
	@echo "$(GREEN)~..	$(BLUE)ﾟ✧$(BLUE)	ヽ(ﾟｰﾟ*ヽ)$(RED)ヽ(*ﾟｰﾟ*)ﾉ$(GREEN)(ﾉ*ﾟｰﾟ)ﾉ	$(RED)✧ﾟ$(GREEN)	..~";
	@sleep 0.3
	@clear
	@echo "$(GREEN)	ﾟ✧\n			$(BLUE)			ﾟ✧";
	@echo "$(RED)				ﾟ✧\n	$(BLUE)	ﾟ✧$(GREEN)					ﾟ✧";
	@echo "$(GREEN)			ﾟ✧\n			$(BLUE)			ﾟ✧";
	@echo "$(GREEN)ﾟ✧$(RED)				ﾟ✧\n	$(BLUE)	 ﾟ✧";
	@echo "$(BLUE)~..	$(RED)ﾟ✧$(BLUE)	ヽ(ﾟｰﾟ*ヽ)$(RED)ヽ(*ﾟｰﾟ*)ﾉ$(GREEN)(ﾉ*ﾟｰﾟ)ﾉ	$(RED)✧ﾟ$(GREEN)	..~";
	@sleep 0.3
	@clear
	@echo "$(RED)	ﾟ✧\n			$(GREEN)		ﾟ✧";
	@echo "$(BLUE)				ﾟ✧\n	$(GREEN)	ﾟ✧$(RED)					ﾟ✧";
	@echo "$(BLUE)			ﾟ✧\n		$(RED)		ﾟ✧";
	@echo "$(BLUE)ﾟ✧$(GREEN)					ﾟ✧\n	$(RED)	 ﾟ✧";
	@echo "$(GREEN)~..	$(BLUE)ﾟ✧$(BLUE)	ヽ(ﾟｰﾟ*ヽ)$(RED)ヽ(*ﾟｰﾟ*)ﾉ$(GREEN)(ﾉ*ﾟｰﾟ)ﾉ	$(RED)✧ﾟ$(GREEN)	..~";
	@sleep 0.3
	@clear
	@echo "$(GREEN)	ﾟ✧\n			$(BLUE)			ﾟ✧";
	@echo "$(RED)				ﾟ✧\n	$(BLUE)	ﾟ✧$(GREEN)					ﾟ✧";
	@echo "$(GREEN)			ﾟ✧\n			$(BLUE)			ﾟ✧";
	@echo "$(GREEN)ﾟ✧$(RED)				ﾟ✧\n	$(BLUE)	 ﾟ✧";
	@echo "$(BLUE)~..	$(RED)ﾟ✧$(BLUE)	ヽ(ﾟｰﾟ*ヽ)$(RED)ヽ(*ﾟｰﾟ*)ﾉ$(GREEN)(ﾉ*ﾟｰﾟ)ﾉ	$(RED)✧ﾟ$(GREEN)	..~";
	@sleep 0.3
	@clear
	@echo "$(RED)	ﾟ✧\n			$(GREEN)		ﾟ✧";
	@echo "$(BLUE)				ﾟ✧\n	$(GREEN)	ﾟ✧$(RED)					ﾟ✧";
	@echo "$(BLUE)			ﾟ✧\n		$(RED)		ﾟ✧";
	@echo "$(BLUE)ﾟ✧$(GREEN)					ﾟ✧\n	$(RED)	 ﾟ✧";
	@echo "$(GREEN)~..	$(BLUE)ﾟ✧$(BLUE)	ヽ(ﾟｰﾟ*ヽ)$(RED)ヽ(*ﾟｰﾟ*)ﾉ$(GREEN)(ﾉ*ﾟｰﾟ)ﾉ	$(RED)✧ﾟ$(GREEN)	..~";
	@sleep 0.3
	@clear

bulbasaur:
	@echo "			$(GREEN)		ﾟ✧";
	@echo "                                           /";
	@echo "                        _,.------....___,.' ',.-.";
	@echo "                     ,-'          _,.--\        |";
	@echo "                   ,'         _.-'              .";
	@echo "                  /   ,     ,'                   `";
	@echo "                 .   /     /                     ``.";
	@echo "                 |  |     .                       \\.\\";
	@echo "       ____      |___._.  |       __               \\ `.";
	@echo "     .'    `---\"\"       ``\"-.--\"'`  \\               .  \\";
	@echo "    .  ,            __               `              |   .";
	@echo "    `,'         ,-\"'  .               \\             |    L";
	@echo "   ,'          '    _.'                -._          /    |";
	@echo "  ,`-.    ,\".   `--'                      >.      ,'     |";
	@echo " . .'\\'   `-'       __    ,  ,-.         /  `.__.-      ,'";
	@echo " ||:, .           ,'  ;  /  / \\ `        `.    .      .'/";
	@echo " j|:D  \\          `--'  ' ,'_  . .         `.__, \\   , /";
	@echo "/ L:_  |                 .  \"' :_;                `.'.'";
	@echo ".    \"\"'                  \"\"\"\"\"'                    V";
	@echo " `.                                 .    `.   _,..  `";
	@echo "   `,_   .    .                _,-'/    .. `,'   __  `";
	@echo "    ) \\`._        ___....----\"'  ,'   .'  \\ |   '  \\  .";
	@echo "   /   `. \"`-.--\"'         _,' ,'     `---' |    `./  |";
	@echo "  .   _  `\"\"'--.._____..--\"   ,             '         |";
	@echo "  | .\" `. `-.                /-.           /          ,";
	@echo "  | `._.'    `,_            ;  /         ,'          .";
	@echo " .'          /| `-.        . ,'         ,           ,";
	@echo " '-.__ __ _,','    '`-..___;-...__   ,.'\\ ____.___.'";
	@echo " `\"^--'..'   '-`-^-'\"--    `-^-'`.''\"\"\"\"\"`.,^.`.--' mh";
	@echo "";
	@echo "";

re: fclean all party
