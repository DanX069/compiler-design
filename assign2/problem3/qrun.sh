#!/bin/bash

bison -d qparse.y
flex -o qscan.c qscan.l

gcc qscan.c qparse.tab.c -ll

./a.out $1
