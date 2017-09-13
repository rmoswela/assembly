/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libasm.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: rmoswela <rmoswela@42.fr>                  +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/08/24 03:42:44 by rmoswela          #+#    #+#             */
/*   Updated: 2017/09/11 17:51:13 by rmoswela         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */


#ifndef LIBASM_H
# define LIBASM_H

#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>
#include <string.h>
#include <fcntl.h>
#include <unistd.h>

void			ft_bzero(void *str, size_t n);
int			ft_isalpha(int character);
int			ft_isdigit(int character);
int			ft_isascii(int character);
int			ft_islower(int character);
int			ft_isupper(int character);
int			ft_isprint(int character);
int			ft_isalnum(int character);
int			ft_tolower(int character);
int			ft_toupper(int character);
int			ft_strlen(char *str);
int			ft_puts(const char *str);
void			ft_cat(int fd);
char			*ft_strdup(const char *str);
char			*ft_strcat(char *src, char *dest);
void			ft_memcpy(void *dest, const void *src,size_t len );
void			ft_memset(void *dest, int c,size_t len );


#endif
