# lists


# rules

main: get_it unpack_it

get_it: get_semi

get_semi:
	make -f ./semicomplete/Makefile


# recipes


.PHONY main
