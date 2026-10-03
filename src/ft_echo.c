#include "echo.h"

static int str_lenght(char *str) {
  int i;

  i = 0;
  while (str[i])
    i++;
  return (i);
}

static int is_n_flag(char *arg) {
  int j;

  if (!arg || arg[0] != '-' || arg[1] != 'n')
    return (0);
  j = 1;
  while (arg[j]) {
    if (arg[j] != 'n')
      return (0);
    j++;
  }
  return (1);
}

void ft_echo(int argc, char **argv) {
  int i;
  int n;
  int len;

  i = 1;
  n = 0;
  while (i < argc && is_n_flag(argv[i])) {
    n = 1;
    i++;
  }
  while (i < argc) {
    len = str_lenght(argv[i]);
    write(1, argv[i], len);
    if (i < argc - 1)
      write(1, " ", 1);
    i++;
  }
  if (n == 0)
    write(1, "\n", 1);
}