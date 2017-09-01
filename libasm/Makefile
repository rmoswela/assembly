#* ************************************************************************** *#
#*                                                                            *#
#*                                                        :::      ::::::::   *#
#*   Makefile                                           :+:      :+:    :+:   *#
#*                                                    +:+ +:+         +:+     *#
#*   By: rmoswela <rmoswela@42.fr>                  +#+  +:+       +#+        *#
#*                                                +#+#+#+#+#+   +#+           *#
#*   Created: 2017/08/24 02:43:43 by rmoswela          #+#    #+#             *#
#*   Updated: 2017/09/01 04:54:02 by rmoswela         ###   ########.fr       *#
#*                                                                            *#
#* ************************************************************************** *#

# THIS MAKEFILE COMPILES THE ASSEMBLY (LIBASM) SOURCE FILES AND CREATES
# A STATIC LIBRARY FROM ITS OBJECT FILES THAT WILL BE USED WHEN RUNNING A
# SOURCE FILE THAT HAS A MAIN TO CREATE AN EXECUTABLE TO TEST OUR ASSEMBLY
# LIBC FUNCTIONS

EXE = asm

LIB = libs/libasm.a

STATIC_LIB_CMD = ar rc

MAIN = src/main_tests.c

MAIN_OBJ = main_tests.o

LIBASM_SRC = src/ft_isalpha.asm src/ft_bzero.asm src/ft_isdigit.asm src/ft_isalnum.asm src/ft_islower.asm src/ft_isupper.asm \
	     src/ft_isascii.asm src/ft_isprint.asm src/ft_tolower.asm src/ft_toupper.asm src/ft_strlen.asm src/ft_strcat.asm \
	     src/ft_memcpy.asm src/ft_memset.asm

LIBASM_OBJ = $(LIBASM_SRC:.asm=.o)

NASM = nasm

CC = gcc

CC_FLAGS = -Wall -Werror -Wextra

LINUX_FLAGS = -f elf64 

MAC_FLAGS = -f macho64

INC = includes

all: $(LIB)
	
$(LIB): $(LIBASM_OBJ)
	$(CC) $(CC_FLAGS) -c $(MAIN) -I $(INC)
	$(STATIC_LIB_CMD) $(LIB) $(LIBASM_OBJ)
	$(CC) -o $(EXE) $(MAIN_OBJ) $(LIB)
%.o: %.asm
	$(NASM) $(LINUX_FLAGS) $<
fclean: 
	/bin/rm -f $(EXE) $(LIB)

clean: fclean
	/bin/rm -f $(LIBASM_OBJ) $(MAIN_OBJ)

re: clean all

.PHONY: clean all re
