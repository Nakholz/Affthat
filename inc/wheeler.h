/*
** wheeler.h in /home/arnhol_m/rendu/Supinfo/arc/b_wheeler
** 
** Made by Arnholz Martin
** Login : arnhol_m
** 
** Started on  Mon Jan  4 23:46:07 2016 
** Last update Tue Jan  5 00:58:43 2016 
*/

#ifndef WHEELER_H_
#define WHEELER_H_
#include <stdlib.h>
#include <unistd.h>
#include <stdarg.h>
#define  BUFF_SIZE 256

int     getpow(char *str);
int     getnbr(char *str);
int	getlen(char *str);
int	getfla(va_list ap, char *str, int i);
int     *getdup(int size);
void	affthat(char *str, ...);
void	affchar(char c);
void    affstr(char *str);
void    affnbr(int nb);
void    afftab(int *sin);
void    affsin(char **tab);
void	affred(int mar, int con, int k);

#endif
