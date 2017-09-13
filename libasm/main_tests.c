/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: rmoswela <rmoswela@42.fr>                  +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/08/18 04:41:11 by rmoswela          #+#    #+#             */
/*   Updated: 2017/09/11 17:28:02 by rmoswela         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libasm.h"

int	main()
{
	/*//compare is alpha fuctions
	int alpha;
       	alpha = isalpha(99);
	printf("system %d\n", alpha);
	alpha = ft_isalpha(99);
	printf("me %d\n", alpha);

	//compare isdigit fun
	int dig = ft_isdigit(48);
	printf("sytem %d\n", dig);

	//strlen
	int len = ft_strlen("reuben moswela");
	printf("len = %d\n", len);

	//strcat
	char name[] = "reuben ";
	char sname[] = "moswela";
	char *s = ft_strcat(name, sname);
	printf("concat = %s\n", s);

	//memcpy
	char src[] = "minern";
	char dest[] = "";
	memcpy(dest, src, 6);
	printf("memcpy = %s\n", dest);
	ft_memset(dest, 90, 6);
	printf("memcpy = %s\n", dest);

	int low = ft_toupper(122);
	printf("lower %d\n", low);

	//compare bzero functions
	char str[] = "reuben";
	printf("before me %s\n", str);
	ft_bzero(str, strlen(str));
	printf("after me %s\n", str);
	char st[] = "system";
	printf("before sys %s\n", st);
	bzero(st, strlen(st));
	printf("after sys %s\n", st);*/
	int fd1 = open("src/main_tests.c", O_RDONLY);
	//int fd2 = open("txt", O_RDONLY);
	//int fd = open ("test", O_CREAT | O_WRONLY | O_TRUNC, S_IRWXU | S_IRGRP);
	printf("fd1 =  %d\n", fd1);
	//printf("fd2 =  %d\n", fd2);
	ft_cat(fd1);
	//ft_cat(fd2);
	close(fd1);
	//close(fd2);
	return 0;
}
