mkdir libnss_X
gcc -shared -fPIC -o 'libnss_X/X .so.2' X.c
ocamlc unix.cma main.ml -o main
