# echo

A lightweight, freestanding C99 reimplementation of the Unix `echo` utility.

## Overview

Designed without standard I/O library dependencies (`stdio.h`), interacting directly with the OS kernel via POSIX system calls (`unistd.h`).

### Features

- Sequential flag parsing supporting single and chained `-n` flags (e.g., `-n`, `-nnnn`).
- Exact argument formatting preserving trailing boundaries and standard line breaks.
- Minimal footprint with zero dynamic memory allocation (`malloc`/`free`).

## Build & Usage

```bash
make
./echo Hello world
./echo -nnnn "No trailing newline"
```

## Rules
- make : Compile binary with -Wall -Wextra -Werror
- make clean : Remove object files
- make fclean : Remove object files and binary
- make re : Full rebuild