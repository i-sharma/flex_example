a.out : lex.yy.c ass3_roll_main.c
		gcc ass3_roll_main.c lex.yy.c -lfl

lex.yy.c :	ass3_roll.l
		flex ass3_roll.l

clean : 
	rm -f a.out lex.yy.c

run : a.out
	./a.out