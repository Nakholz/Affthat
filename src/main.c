/*
** main.c in /home/arnhol_m/rendu/Supinfo/arc/b_wheeler
** 
** Made by Arnholz Martin
** Login : arnhol_m
** 
** Started on  Tue Jan  5 00:20:15 2016 
** Last update Wed May 18 13:30:34 2016 
*/

#include "wheeler.h"

int	main(int ac, char **av)
{
  //simply some test exemple
  if(ac == 4 && (getnbr(av[1]) >= 0) && getlen(av[2]) == 1 && av[3]){
    affthat("first arg is an integer with value : %d \n", getnbr(av[1]));
    affthat("second arg is a char with value : %c \n", av[2][0]);
    affthat("third arg is a char star with value : %s \n", av[3]);
    return (0);
  }
  else{
    affthat("usage :\n -(int) ex >> 1234\n -(char)ex >> z\n -(char *) ex >> \"string\"\n");
    return (-1);
  }
  return (0);
}
