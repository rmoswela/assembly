#* ************************************************************************** *#
#*                                                                            *#
#*                                                        :::      ::::::::   *#
#*   Makefile                                           :+:      :+:    :+:   *#
#*                                                    +:+ +:+         +:+     *#
#*   By: rmoswela <rmoswela@42.fr>                  +#+  +:+       +#+        *#
#*                                                +#+#+#+#+#+   +#+           *#
#*   Created: 2017/08/24 02:43:43 by rmoswela          #+#    #+#             *#
#*   Updated: 2017/09/02 17:36:49 by rmoswela         ###   ########.fr       *#
#*                                                                            *#
#* ************************************************************************** *#

# THIS MAKEFILE COMPILES THE ASSEMBLY (LIBASM) SOURCE FILES AND CREATES
# A STATIC LIBRARY FROM ITS OBJECT FILES THAT WILL BE USED WHEN RUNNING A
# SOURCE FILE THAT HAS A MAIN TO CREATE AN EXECUTABLE TO TEST OUR ASSEMBLY
# LIBC FUNCTIONS

EXE = asm

UNAME := $(shell uname)

LIB = libs/libftasm.a

STATIC_LIB_CMD = ar rc

MAIN = src/main_tests.c

MAIN_OBJ = main_tests.o

LIBASM_SRC = src/ft_isalpha.asm src/ft_bzero.asm src/ft_isdigit.asm \
			 src/ft_isalnum.asm src/ft_islower.asm src/ft_isupper.asm \
			 src/ft_isascii.asm src/ft_isprint.asm src/ft_tolower.asm \
			 src/ft_toupper.asm src/ft_strlen.asm src/ft_strcat.asm \
			 src/ft_memcpy.asm src/ft_memset.asm src/ft_cat.asm \
			 src/ft_strdup.asm src/ft_puts.asm

LIBASM_OBJ = $(LIBASM_SRC:.asm=.o)

NASM = nasm

CC = gcc

CC_FLAGS = -Wall -Werror -Wextra

LINUX_FLAGS = -f elf64 

MAC_FLAGS = -f macho64

INC = includes

all: $(LIB)
	
$(LIB): $(LIBASM_OBJ)

ifeq ($(UNAME), Linux)
	@echo "The operating system is $(UNAME)"
	$(CC) $(CC_FLAGS) -c $(MAIN) -I $(INC)
	$(STATIC_LIB_CMD) $(LIB) $(LIBASM_OBJ)
	$(CC) -o $(EXE) $(MAIN_OBJ) $(LIB)
%.o: %.asm
	@echo "\033[92m$<\033[0m"
	$(NASM) $(LINUX_FLAGS) $<
endif

ifeq ($(UNAME), Darwin)
	@echo "The operating system is $(UNAME)"
	$(CC) $(CC_FLAGS) -c $(MAIN) -I $(INC)
	$(STATIC_LIB_CMD) $(LIB) $(LIBASM_OBJ)
	$(CC) -o $(EXE) $(MAIN_OBJ) $(LIB)
%.o: %.asm
	@echo "\033[92m$<\033[0m"
	$(NASM) $(MAC_FLAGS) $<
endif

fclean: 
	/bin/rm -f $(EXE) $(LIB)

clean: fclean
	/bin/rm -f $(LIBASM_OBJ) $(MAIN_OBJ)

re: clean all

.PHONY: clean all re
