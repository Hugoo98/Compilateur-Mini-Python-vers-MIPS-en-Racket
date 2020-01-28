0	parser1867	=	(parser1868)
1	parser1868	=	(program Eof)
2	program	=	(expr)
3	program	=	(declaration)
4	program	=	(declaration program)
5	program	=	(expr program)
6	expr	=	(val)
7	expr	=	(operation)
8	expr	=	(funcall)
9	expr	=	(nt)
10	expr	=	(return)
11	expr	=	(test)
12	expr	=	(while)
13	expr	=	(print)
14	declaration	=	(Lid Lassign sexpr)
15	declaration	=	(Ldef Lid Lopar fargs Lcpar Lcol expr)
16	fargs	=	(Lid Lcomma fargs)
17	fargs	=	(Lid)
18	fargs	=	(Lnil)
19	callargs	=	(sexpr Lcomma fargs)
20	callargs	=	(sexpr)
21	callargs	=	(Lnil)
22	return	=	(Lret sexpr)
23	funcall	=	(Lid Lopar callargs Lcpar)
24	print	=	(Lprint Lopar Lcot expr Lcot Lcpar)
25	print	=	(Lprint Lopar sexpr Lcpar)
26	print	=	(Lprint Lopar val Lcpar)
27	operation	=	(sexpr Lplus sexpr)
28	operation	=	(sexpr Lminus sexpr)
29	operation	=	(sexpr Lstar sexpr)
30	operation	=	(sexpr Lslash sexpr)
31	operation	=	(sexpr Lmod sexpr)
32	operation	=	(sexpr Lexpt sexpr)
33	operation	=	(sexpr Land sexpr)
34	operation	=	(sexpr Lor sexpr)
35	operation	=	(sexpr Lsup sexpr)
36	operation	=	(sexpr Linf sexpr)
37	operation	=	(sexpr Lseq sexpr)
38	operation	=	(sexpr Lieq sexpr)
39	operation	=	(sexpr Leq sexpr)
40	operation	=	(sexpr Lneq sexpr)
41	nt	=	(Lnot sexpr)
42	val	=	(Lnum)
43	val	=	(Lid)
44	val	=	(Lbool)
45	test	=	(Lif expr Lcol expr Lelse Lcol expr)
46	while	=	(Lwhile expr Lcol expr)
47	sexpr	=	(val)
48	sexpr	=	(operation)
49	sexpr	=	(nt)
State 0
	parser1867 -> . parser1868 

	val					goto	10
	sexpr					goto	13
	while					goto	12
	print					goto	7
	nt					goto	9
	Lnot					shift	14
	Lif					shift	18
	Lret					shift	22
	parser1868					goto	1
	program					goto	2
	operation					goto	8
	Lnum					shift	15
	funcall					goto	6
	declaration					goto	4
	Lwhile					shift	20
	Ldef					shift	21
	test					goto	11
	Lbool					shift	16
	Lprint					shift	19
	Lid					shift	17
	return					goto	5
	expr					goto	3

State 1
	parser1867 -> parser1868 . 


State 2
	parser1868 -> program . Eof 

	Eof					accept	

State 3
	program -> expr . 
	program -> expr . program 

	val					goto	10
	sexpr					goto	13
	while					goto	12
	nt					goto	9
	Lnot					shift	14
	Lif					shift	18
	Lret					shift	22
	print					goto	7
	program					goto	24
	Eof					reduce	2
	operation					goto	8
	Lnum					shift	15
	funcall					goto	6
	declaration					goto	4
	Lwhile					shift	20
	Ldef					shift	21
	test					goto	11
	Lbool					shift	16
	Lprint					shift	19
	Lid					shift	17
	return					goto	5
	expr					goto	3

State 4
	program -> declaration . 
	program -> declaration . program 

	val					goto	10
	sexpr					goto	13
	while					goto	12
	nt					goto	9
	Lnot					shift	14
	Lif					shift	18
	Lret					shift	22
	print					goto	7
	program					goto	25
	Eof					reduce	3
	operation					goto	8
	Lnum					shift	15
	funcall					goto	6
	declaration					goto	4
	Lwhile					shift	20
	Ldef					shift	21
	test					goto	11
	Lbool					shift	16
	Lprint					shift	19
	Lid					shift	17
	return					goto	5
	expr					goto	3

State 5
	expr -> return . 

	Lnot					reduce	10
	Lwhile					reduce	10
	Lif					reduce	10
	Eof					reduce	10
	Lelse					reduce	10
	Lnum					reduce	10
	Lcol					reduce	10
	Lcot					reduce	10
	Lprint					reduce	10
	Ldef					reduce	10
	Lbool					reduce	10
	Lid					reduce	10
	Lret					reduce	10

State 6
	expr -> funcall . 

	Lnot					reduce	8
	Lwhile					reduce	8
	Lif					reduce	8
	Eof					reduce	8
	Lelse					reduce	8
	Lnum					reduce	8
	Lcol					reduce	8
	Lcot					reduce	8
	Lprint					reduce	8
	Ldef					reduce	8
	Lbool					reduce	8
	Lid					reduce	8
	Lret					reduce	8

State 7
	expr -> print . 

	Lnot					reduce	13
	Lwhile					reduce	13
	Lif					reduce	13
	Eof					reduce	13
	Lelse					reduce	13
	Lnum					reduce	13
	Lcol					reduce	13
	Lcot					reduce	13
	Lprint					reduce	13
	Ldef					reduce	13
	Lbool					reduce	13
	Lid					reduce	13
	Lret					reduce	13

State 8
	expr -> operation . 
	sexpr -> operation . 

	Lnot					reduce	7
	Lslash					reduce	48
	Lneq					reduce	48
	Lor					reduce	48
	Lexpt					reduce	48
	Lminus					reduce	48
	Eof					reduce	7
	Lelse					reduce	7
	Lcot					reduce	7
	Lmod					reduce	48
	Linf					reduce	48
	Lid					reduce	7
	Lieq					reduce	48
	Lseq					reduce	48
	Land					reduce	48
	Lwhile					reduce	7
	Lsup					reduce	48
	Lstar					reduce	48
	Lif					reduce	7
	Leq					reduce	48
	Lret					reduce	7
	Lnum					reduce	7
	Lcol					reduce	7
	Lplus					reduce	48
	Lprint					reduce	7
	Ldef					reduce	7
	Lbool					reduce	7

State 9
	expr -> nt . 
	sexpr -> nt . 

	Lnot					reduce	9
	Lslash					reduce	49
	Lneq					reduce	49
	Lor					reduce	49
	Lexpt					reduce	49
	Lminus					reduce	49
	Eof					reduce	9
	Lelse					reduce	9
	Lcot					reduce	9
	Lmod					reduce	49
	Linf					reduce	49
	Lid					reduce	9
	Lieq					reduce	49
	Lseq					reduce	49
	Land					reduce	49
	Lwhile					reduce	9
	Lsup					reduce	49
	Lstar					reduce	49
	Lif					reduce	9
	Leq					reduce	49
	Lret					reduce	9
	Lnum					reduce	9
	Lcol					reduce	9
	Lplus					reduce	49
	Lprint					reduce	9
	Ldef					reduce	9
	Lbool					reduce	9

State 10
	expr -> val . 
	sexpr -> val . 

	Lnot					reduce	6
	Lslash					reduce	47
	Lneq					reduce	47
	Lor					reduce	47
	Lexpt					reduce	47
	Lminus					reduce	47
	Eof					reduce	6
	Lelse					reduce	6
	Lcot					reduce	6
	Lmod					reduce	47
	Linf					reduce	47
	Lid					reduce	6
	Lieq					reduce	47
	Lseq					reduce	47
	Land					reduce	47
	Lwhile					reduce	6
	Lsup					reduce	47
	Lstar					reduce	47
	Lif					reduce	6
	Leq					reduce	47
	Lret					reduce	6
	Lnum					reduce	6
	Lcol					reduce	6
	Lplus					reduce	47
	Lprint					reduce	6
	Ldef					reduce	6
	Lbool					reduce	6

State 11
	expr -> test . 

	Lnot					reduce	11
	Lwhile					reduce	11
	Lif					reduce	11
	Eof					reduce	11
	Lelse					reduce	11
	Lnum					reduce	11
	Lcol					reduce	11
	Lcot					reduce	11
	Lprint					reduce	11
	Ldef					reduce	11
	Lbool					reduce	11
	Lid					reduce	11
	Lret					reduce	11

State 12
	expr -> while . 

	Lnot					reduce	12
	Lwhile					reduce	12
	Lif					reduce	12
	Eof					reduce	12
	Lelse					reduce	12
	Lnum					reduce	12
	Lcol					reduce	12
	Lcot					reduce	12
	Lprint					reduce	12
	Ldef					reduce	12
	Lbool					reduce	12
	Lid					reduce	12
	Lret					reduce	12

State 13
	operation -> sexpr . Lplus sexpr 
	operation -> sexpr . Lminus sexpr 
	operation -> sexpr . Lstar sexpr 
	operation -> sexpr . Lslash sexpr 
	operation -> sexpr . Lmod sexpr 
	operation -> sexpr . Lexpt sexpr 
	operation -> sexpr . Land sexpr 
	operation -> sexpr . Lor sexpr 
	operation -> sexpr . Lsup sexpr 
	operation -> sexpr . Linf sexpr 
	operation -> sexpr . Lseq sexpr 
	operation -> sexpr . Lieq sexpr 
	operation -> sexpr . Leq sexpr 
	operation -> sexpr . Lneq sexpr 

	Land					shift	30
	Lneq					shift	38
	Lstar					shift	28
	Lor					shift	31
	Lieq					shift	36
	Lexpt					shift	39
	Lminus					shift	27
	Leq					shift	37
	Lseq					shift	35
	Lplus					shift	26
	Lsup					shift	33
	Lmod					shift	29
	Linf					shift	34
	Lslash					shift	32

State 14
	nt -> Lnot . sexpr 

	Lnot					shift	14
	operation					goto	40
	Lnum					shift	15
	nt					goto	41
	val					goto	42
	Lbool					shift	16
	Lid					shift	44
	sexpr					goto	43

State 15
	val -> Lnum . 

	Lnot					reduce	42
	Lcomma					reduce	42
	Lor					reduce	42
	Lslash					reduce	42
	Lneq					reduce	42
	Lsup					reduce	42
	Lexpt					reduce	42
	Lif					reduce	42
	Lelse					reduce	42
	Lcot					reduce	42
	Lcpar					reduce	42
	Lmod					reduce	42
	Linf					reduce	42
	Lid					reduce	42
	Lseq					reduce	42
	Land					reduce	42
	Lwhile					reduce	42
	Leq					reduce	42
	Lstar					reduce	42
	Lieq					reduce	42
	Lminus					reduce	42
	Eof					reduce	42
	Lret					reduce	42
	Lnum					reduce	42
	Lcol					reduce	42
	Lplus					reduce	42
	Lprint					reduce	42
	Ldef					reduce	42
	Lbool					reduce	42

State 16
	val -> Lbool . 

	Lnot					reduce	44
	Lcomma					reduce	44
	Lor					reduce	44
	Lslash					reduce	44
	Lneq					reduce	44
	Lsup					reduce	44
	Lexpt					reduce	44
	Lif					reduce	44
	Lelse					reduce	44
	Lcot					reduce	44
	Lcpar					reduce	44
	Lmod					reduce	44
	Linf					reduce	44
	Lid					reduce	44
	Lseq					reduce	44
	Land					reduce	44
	Lwhile					reduce	44
	Leq					reduce	44
	Lstar					reduce	44
	Lieq					reduce	44
	Lminus					reduce	44
	Eof					reduce	44
	Lret					reduce	44
	Lnum					reduce	44
	Lcol					reduce	44
	Lplus					reduce	44
	Lprint					reduce	44
	Ldef					reduce	44
	Lbool					reduce	44

State 17
	declaration -> Lid . Lassign sexpr 
	funcall -> Lid . Lopar callargs Lcpar 
	val -> Lid . 

	Lnot					reduce	43
	Lopar					shift	46
	Lor					reduce	43
	Lneq					reduce	43
	Lsup					reduce	43
	Lexpt					reduce	43
	Lminus					reduce	43
	Lseq					reduce	43
	Lif					reduce	43
	Lmod					reduce	43
	Linf					reduce	43
	Lid					reduce	43
	Lslash					reduce	43
	Land					reduce	43
	Lwhile					reduce	43
	Leq					reduce	43
	Lassign					shift	45
	Lstar					reduce	43
	Lieq					reduce	43
	Eof					reduce	43
	Lret					reduce	43
	Lnum					reduce	43
	Lplus					reduce	43
	Lprint					reduce	43
	Ldef					reduce	43
	Lbool					reduce	43

State 18
	test -> Lif . expr Lcol expr Lelse Lcol expr 

	Lnot					shift	14
	sexpr					goto	13
	while					goto	12
	nt					goto	9
	Lif					shift	18
	val					goto	10
	print					goto	7
	operation					goto	8
	Lnum					shift	15
	funcall					goto	6
	Lprint					shift	19
	Lwhile					shift	20
	Lret					shift	22
	test					goto	11
	Lbool					shift	16
	Lid					shift	48
	return					goto	5
	expr					goto	47

State 19
	print -> Lprint . Lopar Lcot expr Lcot Lcpar 
	print -> Lprint . Lopar sexpr Lcpar 
	print -> Lprint . Lopar val Lcpar 

	Lopar					shift	49

State 20
	while -> Lwhile . expr Lcol expr 

	Lnot					shift	14
	sexpr					goto	13
	while					goto	12
	nt					goto	9
	Lif					shift	18
	val					goto	10
	print					goto	7
	operation					goto	8
	Lnum					shift	15
	funcall					goto	6
	Lprint					shift	19
	Lwhile					shift	20
	Lret					shift	22
	test					goto	11
	Lbool					shift	16
	Lid					shift	48
	return					goto	5
	expr					goto	50

State 21
	declaration -> Ldef . Lid Lopar fargs Lcpar Lcol expr 

	Lid					shift	51

State 22
	return -> Lret . sexpr 

	Lnot					shift	14
	operation					goto	40
	Lnum					shift	15
	nt					goto	41
	val					goto	42
	Lbool					shift	16
	Lid					shift	44
	sexpr					goto	52

State 23
	parser1868 -> program Eof . 


State 24
	program -> expr program . 

	Eof					reduce	5

State 25
	program -> declaration program . 

	Eof					reduce	4

State 26
	operation -> sexpr Lplus . sexpr 

	Lnot					shift	14
	operation					goto	40
	Lnum					shift	15
	nt					goto	41
	val					goto	42
	Lbool					shift	16
	Lid					shift	44
	sexpr					goto	53

State 27
	operation -> sexpr Lminus . sexpr 

	Lnot					shift	14
	operation					goto	40
	Lnum					shift	15
	nt					goto	41
	val					goto	42
	Lbool					shift	16
	Lid					shift	44
	sexpr					goto	54

State 28
	operation -> sexpr Lstar . sexpr 

	Lnot					shift	14
	operation					goto	40
	Lnum					shift	15
	nt					goto	41
	val					goto	42
	Lbool					shift	16
	Lid					shift	44
	sexpr					goto	55

State 29
	operation -> sexpr Lmod . sexpr 

	Lnot					shift	14
	operation					goto	40
	Lnum					shift	15
	nt					goto	41
	val					goto	42
	Lbool					shift	16
	Lid					shift	44
	sexpr					goto	56

State 30
	operation -> sexpr Land . sexpr 

	Lnot					shift	14
	operation					goto	40
	Lnum					shift	15
	nt					goto	41
	val					goto	42
	Lbool					shift	16
	Lid					shift	44
	sexpr					goto	57

State 31
	operation -> sexpr Lor . sexpr 

	Lnot					shift	14
	operation					goto	40
	Lnum					shift	15
	nt					goto	41
	val					goto	42
	Lbool					shift	16
	Lid					shift	44
	sexpr					goto	58

State 32
	operation -> sexpr Lslash . sexpr 

	Lnot					shift	14
	operation					goto	40
	Lnum					shift	15
	nt					goto	41
	val					goto	42
	Lbool					shift	16
	Lid					shift	44
	sexpr					goto	59

State 33
	operation -> sexpr Lsup . sexpr 

	Lnot					shift	14
	operation					goto	40
	Lnum					shift	15
	nt					goto	41
	val					goto	42
	Lbool					shift	16
	Lid					shift	44
	sexpr					goto	60

State 34
	operation -> sexpr Linf . sexpr 

	Lnot					shift	14
	operation					goto	40
	Lnum					shift	15
	nt					goto	41
	val					goto	42
	Lbool					shift	16
	Lid					shift	44
	sexpr					goto	61

State 35
	operation -> sexpr Lseq . sexpr 

	Lnot					shift	14
	operation					goto	40
	Lnum					shift	15
	nt					goto	41
	val					goto	42
	Lbool					shift	16
	Lid					shift	44
	sexpr					goto	62

State 36
	operation -> sexpr Lieq . sexpr 

	Lnot					shift	14
	operation					goto	40
	Lnum					shift	15
	nt					goto	41
	val					goto	42
	Lbool					shift	16
	Lid					shift	44
	sexpr					goto	63

State 37
	operation -> sexpr Leq . sexpr 

	Lnot					shift	14
	operation					goto	40
	Lnum					shift	15
	nt					goto	41
	val					goto	42
	Lbool					shift	16
	Lid					shift	44
	sexpr					goto	64

State 38
	operation -> sexpr Lneq . sexpr 

	Lnot					shift	14
	operation					goto	40
	Lnum					shift	15
	nt					goto	41
	val					goto	42
	Lbool					shift	16
	Lid					shift	44
	sexpr					goto	65

State 39
	operation -> sexpr Lexpt . sexpr 

	Lnot					shift	14
	operation					goto	40
	Lnum					shift	15
	nt					goto	41
	val					goto	42
	Lbool					shift	16
	Lid					shift	44
	sexpr					goto	66

State 40
	sexpr -> operation . 

	Lnot					reduce	48
	Lcomma					reduce	48
	Lor					reduce	48
	Lslash					reduce	48
	Lneq					reduce	48
	Lsup					reduce	48
	Lexpt					reduce	48
	Lif					reduce	48
	Lelse					reduce	48
	Lcot					reduce	48
	Lcpar					reduce	48
	Lmod					reduce	48
	Linf					reduce	48
	Lid					reduce	48
	Lseq					reduce	48
	Land					reduce	48
	Lwhile					reduce	48
	Leq					reduce	48
	Lstar					reduce	48
	Lieq					reduce	48
	Lminus					reduce	48
	Eof					reduce	48
	Lret					reduce	48
	Lnum					reduce	48
	Lcol					reduce	48
	Lplus					reduce	48
	Lprint					reduce	48
	Ldef					reduce	48
	Lbool					reduce	48

State 41
	sexpr -> nt . 

	Lnot					reduce	49
	Lcomma					reduce	49
	Lor					reduce	49
	Lslash					reduce	49
	Lneq					reduce	49
	Lsup					reduce	49
	Lexpt					reduce	49
	Lif					reduce	49
	Lelse					reduce	49
	Lcot					reduce	49
	Lcpar					reduce	49
	Lmod					reduce	49
	Linf					reduce	49
	Lid					reduce	49
	Lseq					reduce	49
	Land					reduce	49
	Lwhile					reduce	49
	Leq					reduce	49
	Lstar					reduce	49
	Lieq					reduce	49
	Lminus					reduce	49
	Eof					reduce	49
	Lret					reduce	49
	Lnum					reduce	49
	Lcol					reduce	49
	Lplus					reduce	49
	Lprint					reduce	49
	Ldef					reduce	49
	Lbool					reduce	49

State 42
	sexpr -> val . 

	Lnot					reduce	47
	Lcomma					reduce	47
	Lor					reduce	47
	Lslash					reduce	47
	Lneq					reduce	47
	Lsup					reduce	47
	Lexpt					reduce	47
	Lif					reduce	47
	Lelse					reduce	47
	Lcot					reduce	47
	Lcpar					reduce	47
	Lmod					reduce	47
	Linf					reduce	47
	Lid					reduce	47
	Lseq					reduce	47
	Land					reduce	47
	Lwhile					reduce	47
	Leq					reduce	47
	Lstar					reduce	47
	Lieq					reduce	47
	Lminus					reduce	47
	Eof					reduce	47
	Lret					reduce	47
	Lnum					reduce	47
	Lcol					reduce	47
	Lplus					reduce	47
	Lprint					reduce	47
	Ldef					reduce	47
	Lbool					reduce	47

State 43
	operation -> sexpr . Lplus sexpr 
	operation -> sexpr . Lminus sexpr 
	operation -> sexpr . Lstar sexpr 
	operation -> sexpr . Lslash sexpr 
	operation -> sexpr . Lmod sexpr 
	operation -> sexpr . Lexpt sexpr 
	operation -> sexpr . Land sexpr 
	operation -> sexpr . Lor sexpr 
	operation -> sexpr . Lsup sexpr 
	operation -> sexpr . Linf sexpr 
	operation -> sexpr . Lseq sexpr 
	operation -> sexpr . Lieq sexpr 
	operation -> sexpr . Leq sexpr 
	operation -> sexpr . Lneq sexpr 
	nt -> Lnot sexpr . 

	Lnot					reduce	41
	Lcomma					reduce	41
	Lor					shift	31
	Lslash					reduce	41
	Lneq					shift	38
	Lsup					shift	33
	Lexpt					shift	39
	Lif					reduce	41
	Lelse					reduce	41
	Lcot					reduce	41
	Lcpar					reduce	41
	Lmod					reduce	41
	Linf					shift	34
	Lid					reduce	41
	Lseq					shift	35
	Land					reduce	41
	Lwhile					reduce	41
	Leq					shift	37
	Lstar					reduce	41
	Lieq					shift	36
	Lminus					reduce	41
	Eof					reduce	41
	Lret					reduce	41
	Lnum					reduce	41
	Lcol					reduce	41
	Lplus					reduce	41
	Lprint					reduce	41
	Ldef					reduce	41
	Lbool					reduce	41

State 44
	val -> Lid . 

	Lnot					reduce	43
	Lcomma					reduce	43
	Lor					reduce	43
	Lslash					reduce	43
	Lneq					reduce	43
	Lsup					reduce	43
	Lexpt					reduce	43
	Lif					reduce	43
	Lelse					reduce	43
	Lcot					reduce	43
	Lcpar					reduce	43
	Lmod					reduce	43
	Linf					reduce	43
	Lid					reduce	43
	Lseq					reduce	43
	Land					reduce	43
	Lwhile					reduce	43
	Leq					reduce	43
	Lstar					reduce	43
	Lieq					reduce	43
	Lminus					reduce	43
	Eof					reduce	43
	Lret					reduce	43
	Lnum					reduce	43
	Lcol					reduce	43
	Lplus					reduce	43
	Lprint					reduce	43
	Ldef					reduce	43
	Lbool					reduce	43

State 45
	declaration -> Lid Lassign . sexpr 

	Lnot					shift	14
	operation					goto	40
	Lnum					shift	15
	nt					goto	41
	val					goto	42
	Lbool					shift	16
	Lid					shift	44
	sexpr					goto	67

State 46
	funcall -> Lid Lopar . callargs Lcpar 

	Lnot					shift	14
	operation					goto	40
	sexpr					goto	69
	Lnil					shift	70
	callargs					goto	68
	nt					goto	41
	val					goto	42
	Lbool					shift	16
	Lid					shift	44
	Lnum					shift	15

State 47
	test -> Lif expr . Lcol expr Lelse Lcol expr 

	Lcol					shift	71

State 48
	funcall -> Lid . Lopar callargs Lcpar 
	val -> Lid . 

	Lnot					reduce	43
	Lopar					shift	46
	Lor					reduce	43
	Lslash					reduce	43
	Lneq					reduce	43
	Lsup					reduce	43
	Lexpt					reduce	43
	Lif					reduce	43
	Lelse					reduce	43
	Lcot					reduce	43
	Lmod					reduce	43
	Linf					reduce	43
	Lid					reduce	43
	Lseq					reduce	43
	Land					reduce	43
	Lwhile					reduce	43
	Leq					reduce	43
	Lstar					reduce	43
	Lieq					reduce	43
	Lminus					reduce	43
	Eof					reduce	43
	Lret					reduce	43
	Lnum					reduce	43
	Lcol					reduce	43
	Lplus					reduce	43
	Lprint					reduce	43
	Ldef					reduce	43
	Lbool					reduce	43

State 49
	print -> Lprint Lopar . Lcot expr Lcot Lcpar 
	print -> Lprint Lopar . sexpr Lcpar 
	print -> Lprint Lopar . val Lcpar 

	Lnot					shift	14
	operation					goto	40
	Lnum					shift	15
	Lcot					shift	74
	nt					goto	41
	val					goto	72
	Lbool					shift	16
	Lid					shift	44
	sexpr					goto	73

State 50
	while -> Lwhile expr . Lcol expr 

	Lcol					shift	75

State 51
	declaration -> Ldef Lid . Lopar fargs Lcpar Lcol expr 

	Lopar					shift	76

State 52
	return -> Lret sexpr . 
	operation -> sexpr . Lplus sexpr 
	operation -> sexpr . Lminus sexpr 
	operation -> sexpr . Lstar sexpr 
	operation -> sexpr . Lslash sexpr 
	operation -> sexpr . Lmod sexpr 
	operation -> sexpr . Lexpt sexpr 
	operation -> sexpr . Land sexpr 
	operation -> sexpr . Lor sexpr 
	operation -> sexpr . Lsup sexpr 
	operation -> sexpr . Linf sexpr 
	operation -> sexpr . Lseq sexpr 
	operation -> sexpr . Lieq sexpr 
	operation -> sexpr . Leq sexpr 
	operation -> sexpr . Lneq sexpr 

	Lnot					reduce	22
	Lneq					shift	38
	Lor					shift	31
	Lexpt					shift	39
	Lminus					shift	27
	Lseq					shift	35
	Lelse					reduce	22
	Lcot					reduce	22
	Lmod					shift	29
	Linf					shift	34
	Lid					reduce	22
	Lieq					shift	36
	Lslash					shift	32
	Land					shift	30
	Lwhile					reduce	22
	Lsup					shift	33
	Leq					shift	37
	Lstar					shift	28
	Lif					reduce	22
	Eof					reduce	22
	Lret					reduce	22
	Lnum					reduce	22
	Lcol					reduce	22
	Lplus					shift	26
	Lprint					reduce	22
	Ldef					reduce	22
	Lbool					reduce	22

State 53
	operation -> sexpr . Lplus sexpr 
	operation -> sexpr Lplus sexpr . 
	operation -> sexpr . Lminus sexpr 
	operation -> sexpr . Lstar sexpr 
	operation -> sexpr . Lslash sexpr 
	operation -> sexpr . Lmod sexpr 
	operation -> sexpr . Lexpt sexpr 
	operation -> sexpr . Land sexpr 
	operation -> sexpr . Lor sexpr 
	operation -> sexpr . Lsup sexpr 
	operation -> sexpr . Linf sexpr 
	operation -> sexpr . Lseq sexpr 
	operation -> sexpr . Lieq sexpr 
	operation -> sexpr . Leq sexpr 
	operation -> sexpr . Lneq sexpr 

	Lnot					reduce	27
	Lcomma					reduce	27
	Lor					shift	31
	Lslash					shift	32
	Lneq					shift	38
	Lsup					shift	33
	Lexpt					shift	39
	Lif					reduce	27
	Lelse					reduce	27
	Lcot					reduce	27
	Lcpar					reduce	27
	Lmod					shift	29
	Linf					shift	34
	Lid					reduce	27
	Lseq					shift	35
	Land					shift	30
	Lwhile					reduce	27
	Leq					shift	37
	Lstar					shift	28
	Lieq					shift	36
	Lminus					shift	27
	Eof					reduce	27
	Lret					reduce	27
	Lnum					reduce	27
	Lcol					reduce	27
	Lplus					reduce	27
	Lprint					reduce	27
	Ldef					reduce	27
	Lbool					reduce	27

State 54
	operation -> sexpr . Lplus sexpr 
	operation -> sexpr . Lminus sexpr 
	operation -> sexpr Lminus sexpr . 
	operation -> sexpr . Lstar sexpr 
	operation -> sexpr . Lslash sexpr 
	operation -> sexpr . Lmod sexpr 
	operation -> sexpr . Lexpt sexpr 
	operation -> sexpr . Land sexpr 
	operation -> sexpr . Lor sexpr 
	operation -> sexpr . Lsup sexpr 
	operation -> sexpr . Linf sexpr 
	operation -> sexpr . Lseq sexpr 
	operation -> sexpr . Lieq sexpr 
	operation -> sexpr . Leq sexpr 
	operation -> sexpr . Lneq sexpr 

	Lnot					reduce	28
	Lcomma					reduce	28
	Lor					shift	31
	Lslash					shift	32
	Lneq					shift	38
	Lsup					shift	33
	Lexpt					shift	39
	Lif					reduce	28
	Lelse					reduce	28
	Lcot					reduce	28
	Lcpar					reduce	28
	Lmod					shift	29
	Linf					shift	34
	Lid					reduce	28
	Lseq					shift	35
	Land					shift	30
	Lwhile					reduce	28
	Leq					shift	37
	Lstar					shift	28
	Lieq					shift	36
	Lminus					reduce	28
	Eof					reduce	28
	Lret					reduce	28
	Lnum					reduce	28
	Lcol					reduce	28
	Lplus					reduce	28
	Lprint					reduce	28
	Ldef					reduce	28
	Lbool					reduce	28

State 55
	operation -> sexpr . Lplus sexpr 
	operation -> sexpr . Lminus sexpr 
	operation -> sexpr . Lstar sexpr 
	operation -> sexpr Lstar sexpr . 
	operation -> sexpr . Lslash sexpr 
	operation -> sexpr . Lmod sexpr 
	operation -> sexpr . Lexpt sexpr 
	operation -> sexpr . Land sexpr 
	operation -> sexpr . Lor sexpr 
	operation -> sexpr . Lsup sexpr 
	operation -> sexpr . Linf sexpr 
	operation -> sexpr . Lseq sexpr 
	operation -> sexpr . Lieq sexpr 
	operation -> sexpr . Leq sexpr 
	operation -> sexpr . Lneq sexpr 

	Lnot					reduce	29
	Lcomma					reduce	29
	Lor					shift	31
	Lslash					shift	32
	Lneq					shift	38
	Lsup					shift	33
	Lexpt					shift	39
	Lif					reduce	29
	Lelse					reduce	29
	Lcot					reduce	29
	Lcpar					reduce	29
	Lmod					shift	29
	Linf					shift	34
	Lid					reduce	29
	Lseq					shift	35
	Land					shift	30
	Lwhile					reduce	29
	Leq					shift	37
	Lstar					reduce	29
	Lieq					shift	36
	Lminus					reduce	29
	Eof					reduce	29
	Lret					reduce	29
	Lnum					reduce	29
	Lcol					reduce	29
	Lplus					reduce	29
	Lprint					reduce	29
	Ldef					reduce	29
	Lbool					reduce	29

State 56
	operation -> sexpr . Lplus sexpr 
	operation -> sexpr . Lminus sexpr 
	operation -> sexpr . Lstar sexpr 
	operation -> sexpr . Lslash sexpr 
	operation -> sexpr . Lmod sexpr 
	operation -> sexpr Lmod sexpr . 
	operation -> sexpr . Lexpt sexpr 
	operation -> sexpr . Land sexpr 
	operation -> sexpr . Lor sexpr 
	operation -> sexpr . Lsup sexpr 
	operation -> sexpr . Linf sexpr 
	operation -> sexpr . Lseq sexpr 
	operation -> sexpr . Lieq sexpr 
	operation -> sexpr . Leq sexpr 
	operation -> sexpr . Lneq sexpr 

	Lnot					reduce	31
	Lcomma					reduce	31
	Lor					shift	31
	Lslash					reduce	31
	Lneq					shift	38
	Lsup					shift	33
	Lexpt					shift	39
	Lif					reduce	31
	Lelse					reduce	31
	Lcot					reduce	31
	Lcpar					reduce	31
	Lmod					reduce	31
	Linf					shift	34
	Lid					reduce	31
	Lseq					shift	35
	Land					shift	30
	Lwhile					reduce	31
	Leq					shift	37
	Lstar					reduce	31
	Lieq					shift	36
	Lminus					reduce	31
	Eof					reduce	31
	Lret					reduce	31
	Lnum					reduce	31
	Lcol					reduce	31
	Lplus					reduce	31
	Lprint					reduce	31
	Ldef					reduce	31
	Lbool					reduce	31

State 57
	operation -> sexpr . Lplus sexpr 
	operation -> sexpr . Lminus sexpr 
	operation -> sexpr . Lstar sexpr 
	operation -> sexpr . Lslash sexpr 
	operation -> sexpr . Lmod sexpr 
	operation -> sexpr . Lexpt sexpr 
	operation -> sexpr . Land sexpr 
	operation -> sexpr Land sexpr . 
	operation -> sexpr . Lor sexpr 
	operation -> sexpr . Lsup sexpr 
	operation -> sexpr . Linf sexpr 
	operation -> sexpr . Lseq sexpr 
	operation -> sexpr . Lieq sexpr 
	operation -> sexpr . Leq sexpr 
	operation -> sexpr . Lneq sexpr 

	Lnot					reduce	33
	Lcomma					reduce	33
	Lor					shift	31
	Lslash					reduce	33
	Lneq					shift	38
	Lsup					shift	33
	Lexpt					shift	39
	Lif					reduce	33
	Lelse					reduce	33
	Lcot					reduce	33
	Lcpar					reduce	33
	Lmod					reduce	33
	Linf					shift	34
	Lid					reduce	33
	Lseq					shift	35
	Land					reduce	33
	Lwhile					reduce	33
	Leq					shift	37
	Lstar					reduce	33
	Lieq					shift	36
	Lminus					reduce	33
	Eof					reduce	33
	Lret					reduce	33
	Lnum					reduce	33
	Lcol					reduce	33
	Lplus					reduce	33
	Lprint					reduce	33
	Ldef					reduce	33
	Lbool					reduce	33

State 58
	operation -> sexpr . Lplus sexpr 
	operation -> sexpr . Lminus sexpr 
	operation -> sexpr . Lstar sexpr 
	operation -> sexpr . Lslash sexpr 
	operation -> sexpr . Lmod sexpr 
	operation -> sexpr . Lexpt sexpr 
	operation -> sexpr . Land sexpr 
	operation -> sexpr . Lor sexpr 
	operation -> sexpr Lor sexpr . 
	operation -> sexpr . Lsup sexpr 
	operation -> sexpr . Linf sexpr 
	operation -> sexpr . Lseq sexpr 
	operation -> sexpr . Lieq sexpr 
	operation -> sexpr . Leq sexpr 
	operation -> sexpr . Lneq sexpr 

	Lnot					reduce	34
	Lcomma					reduce	34
	Lor					reduce	34
	Lslash					reduce	34
	Lneq					shift	38
	Lsup					shift	33
	Lexpt					shift	39
	Lif					reduce	34
	Lelse					reduce	34
	Lcot					reduce	34
	Lcpar					reduce	34
	Lmod					reduce	34
	Linf					shift	34
	Lid					reduce	34
	Lseq					shift	35
	Land					reduce	34
	Lwhile					reduce	34
	Leq					shift	37
	Lstar					reduce	34
	Lieq					shift	36
	Lminus					reduce	34
	Eof					reduce	34
	Lret					reduce	34
	Lnum					reduce	34
	Lcol					reduce	34
	Lplus					reduce	34
	Lprint					reduce	34
	Ldef					reduce	34
	Lbool					reduce	34

State 59
	operation -> sexpr . Lplus sexpr 
	operation -> sexpr . Lminus sexpr 
	operation -> sexpr . Lstar sexpr 
	operation -> sexpr . Lslash sexpr 
	operation -> sexpr Lslash sexpr . 
	operation -> sexpr . Lmod sexpr 
	operation -> sexpr . Lexpt sexpr 
	operation -> sexpr . Land sexpr 
	operation -> sexpr . Lor sexpr 
	operation -> sexpr . Lsup sexpr 
	operation -> sexpr . Linf sexpr 
	operation -> sexpr . Lseq sexpr 
	operation -> sexpr . Lieq sexpr 
	operation -> sexpr . Leq sexpr 
	operation -> sexpr . Lneq sexpr 

	Lnot					reduce	30
	Lcomma					reduce	30
	Lor					shift	31
	Lslash					reduce	30
	Lneq					shift	38
	Lsup					shift	33
	Lexpt					shift	39
	Lif					reduce	30
	Lelse					reduce	30
	Lcot					reduce	30
	Lcpar					reduce	30
	Lmod					shift	29
	Linf					shift	34
	Lid					reduce	30
	Lseq					shift	35
	Land					shift	30
	Lwhile					reduce	30
	Leq					shift	37
	Lstar					reduce	30
	Lieq					shift	36
	Lminus					reduce	30
	Eof					reduce	30
	Lret					reduce	30
	Lnum					reduce	30
	Lcol					reduce	30
	Lplus					reduce	30
	Lprint					reduce	30
	Ldef					reduce	30
	Lbool					reduce	30

State 60
	operation -> sexpr . Lplus sexpr 
	operation -> sexpr . Lminus sexpr 
	operation -> sexpr . Lstar sexpr 
	operation -> sexpr . Lslash sexpr 
	operation -> sexpr . Lmod sexpr 
	operation -> sexpr . Lexpt sexpr 
	operation -> sexpr . Land sexpr 
	operation -> sexpr . Lor sexpr 
	operation -> sexpr . Lsup sexpr 
	operation -> sexpr Lsup sexpr . 
	operation -> sexpr . Linf sexpr 
	operation -> sexpr . Lseq sexpr 
	operation -> sexpr . Lieq sexpr 
	operation -> sexpr . Leq sexpr 
	operation -> sexpr . Lneq sexpr 

	Lnot					reduce	35
	Lcomma					reduce	35
	Lor					reduce	35
	Lslash					reduce	35
	Lneq					shift	38
	Lsup					reduce	35
	Lexpt					reduce	35
	Lif					reduce	35
	Lelse					reduce	35
	Lcot					reduce	35
	Lcpar					reduce	35
	Lmod					reduce	35
	Linf					shift	34
	Lid					reduce	35
	Lseq					shift	35
	Land					reduce	35
	Lwhile					reduce	35
	Leq					shift	37
	Lstar					reduce	35
	Lieq					shift	36
	Lminus					reduce	35
	Eof					reduce	35
	Lret					reduce	35
	Lnum					reduce	35
	Lcol					reduce	35
	Lplus					reduce	35
	Lprint					reduce	35
	Ldef					reduce	35
	Lbool					reduce	35

State 61
	operation -> sexpr . Lplus sexpr 
	operation -> sexpr . Lminus sexpr 
	operation -> sexpr . Lstar sexpr 
	operation -> sexpr . Lslash sexpr 
	operation -> sexpr . Lmod sexpr 
	operation -> sexpr . Lexpt sexpr 
	operation -> sexpr . Land sexpr 
	operation -> sexpr . Lor sexpr 
	operation -> sexpr . Lsup sexpr 
	operation -> sexpr . Linf sexpr 
	operation -> sexpr Linf sexpr . 
	operation -> sexpr . Lseq sexpr 
	operation -> sexpr . Lieq sexpr 
	operation -> sexpr . Leq sexpr 
	operation -> sexpr . Lneq sexpr 

	Lnot					reduce	36
	Lcomma					reduce	36
	Lor					reduce	36
	Lslash					reduce	36
	Lneq					shift	38
	Lsup					reduce	36
	Lexpt					reduce	36
	Lif					reduce	36
	Lelse					reduce	36
	Lcot					reduce	36
	Lcpar					reduce	36
	Lmod					reduce	36
	Linf					reduce	36
	Lid					reduce	36
	Lseq					shift	35
	Land					reduce	36
	Lwhile					reduce	36
	Leq					shift	37
	Lstar					reduce	36
	Lieq					shift	36
	Lminus					reduce	36
	Eof					reduce	36
	Lret					reduce	36
	Lnum					reduce	36
	Lcol					reduce	36
	Lplus					reduce	36
	Lprint					reduce	36
	Ldef					reduce	36
	Lbool					reduce	36

State 62
	operation -> sexpr . Lplus sexpr 
	operation -> sexpr . Lminus sexpr 
	operation -> sexpr . Lstar sexpr 
	operation -> sexpr . Lslash sexpr 
	operation -> sexpr . Lmod sexpr 
	operation -> sexpr . Lexpt sexpr 
	operation -> sexpr . Land sexpr 
	operation -> sexpr . Lor sexpr 
	operation -> sexpr . Lsup sexpr 
	operation -> sexpr . Linf sexpr 
	operation -> sexpr . Lseq sexpr 
	operation -> sexpr Lseq sexpr . 
	operation -> sexpr . Lieq sexpr 
	operation -> sexpr . Leq sexpr 
	operation -> sexpr . Lneq sexpr 

	Lnot					reduce	37
	Lcomma					reduce	37
	Lor					reduce	37
	Lslash					reduce	37
	Lneq					shift	38
	Lsup					reduce	37
	Lexpt					reduce	37
	Lif					reduce	37
	Lelse					reduce	37
	Lcot					reduce	37
	Lcpar					reduce	37
	Lmod					reduce	37
	Linf					reduce	37
	Lid					reduce	37
	Lseq					reduce	37
	Land					reduce	37
	Lwhile					reduce	37
	Leq					shift	37
	Lstar					reduce	37
	Lieq					shift	36
	Lminus					reduce	37
	Eof					reduce	37
	Lret					reduce	37
	Lnum					reduce	37
	Lcol					reduce	37
	Lplus					reduce	37
	Lprint					reduce	37
	Ldef					reduce	37
	Lbool					reduce	37

State 63
	operation -> sexpr . Lplus sexpr 
	operation -> sexpr . Lminus sexpr 
	operation -> sexpr . Lstar sexpr 
	operation -> sexpr . Lslash sexpr 
	operation -> sexpr . Lmod sexpr 
	operation -> sexpr . Lexpt sexpr 
	operation -> sexpr . Land sexpr 
	operation -> sexpr . Lor sexpr 
	operation -> sexpr . Lsup sexpr 
	operation -> sexpr . Linf sexpr 
	operation -> sexpr . Lseq sexpr 
	operation -> sexpr . Lieq sexpr 
	operation -> sexpr Lieq sexpr . 
	operation -> sexpr . Leq sexpr 
	operation -> sexpr . Lneq sexpr 

	Lnot					reduce	38
	Lcomma					reduce	38
	Lor					reduce	38
	Lslash					reduce	38
	Lneq					shift	38
	Lsup					reduce	38
	Lexpt					reduce	38
	Lif					reduce	38
	Lelse					reduce	38
	Lcot					reduce	38
	Lcpar					reduce	38
	Lmod					reduce	38
	Linf					reduce	38
	Lid					reduce	38
	Lseq					reduce	38
	Land					reduce	38
	Lwhile					reduce	38
	Leq					shift	37
	Lstar					reduce	38
	Lieq					reduce	38
	Lminus					reduce	38
	Eof					reduce	38
	Lret					reduce	38
	Lnum					reduce	38
	Lcol					reduce	38
	Lplus					reduce	38
	Lprint					reduce	38
	Ldef					reduce	38
	Lbool					reduce	38

State 64
	operation -> sexpr . Lplus sexpr 
	operation -> sexpr . Lminus sexpr 
	operation -> sexpr . Lstar sexpr 
	operation -> sexpr . Lslash sexpr 
	operation -> sexpr . Lmod sexpr 
	operation -> sexpr . Lexpt sexpr 
	operation -> sexpr . Land sexpr 
	operation -> sexpr . Lor sexpr 
	operation -> sexpr . Lsup sexpr 
	operation -> sexpr . Linf sexpr 
	operation -> sexpr . Lseq sexpr 
	operation -> sexpr . Lieq sexpr 
	operation -> sexpr . Leq sexpr 
	operation -> sexpr Leq sexpr . 
	operation -> sexpr . Lneq sexpr 

	Lnot					reduce	39
	Lcomma					reduce	39
	Lor					reduce	39
	Lslash					reduce	39
	Lneq					shift	38
	Lsup					reduce	39
	Lexpt					reduce	39
	Lif					reduce	39
	Lelse					reduce	39
	Lcot					reduce	39
	Lcpar					reduce	39
	Lmod					reduce	39
	Linf					reduce	39
	Lid					reduce	39
	Lseq					reduce	39
	Land					reduce	39
	Lwhile					reduce	39
	Leq					reduce	39
	Lstar					reduce	39
	Lieq					reduce	39
	Lminus					reduce	39
	Eof					reduce	39
	Lret					reduce	39
	Lnum					reduce	39
	Lcol					reduce	39
	Lplus					reduce	39
	Lprint					reduce	39
	Ldef					reduce	39
	Lbool					reduce	39

State 65
	operation -> sexpr . Lplus sexpr 
	operation -> sexpr . Lminus sexpr 
	operation -> sexpr . Lstar sexpr 
	operation -> sexpr . Lslash sexpr 
	operation -> sexpr . Lmod sexpr 
	operation -> sexpr . Lexpt sexpr 
	operation -> sexpr . Land sexpr 
	operation -> sexpr . Lor sexpr 
	operation -> sexpr . Lsup sexpr 
	operation -> sexpr . Linf sexpr 
	operation -> sexpr . Lseq sexpr 
	operation -> sexpr . Lieq sexpr 
	operation -> sexpr . Leq sexpr 
	operation -> sexpr . Lneq sexpr 
	operation -> sexpr Lneq sexpr . 

	Lnot					reduce	40
	Lcomma					reduce	40
	Lor					reduce	40
	Lslash					reduce	40
	Lneq					reduce	40
	Lsup					reduce	40
	Lexpt					reduce	40
	Lif					reduce	40
	Lelse					reduce	40
	Lcot					reduce	40
	Lcpar					reduce	40
	Lmod					reduce	40
	Linf					reduce	40
	Lid					reduce	40
	Lseq					reduce	40
	Land					reduce	40
	Lwhile					reduce	40
	Leq					reduce	40
	Lstar					reduce	40
	Lieq					reduce	40
	Lminus					reduce	40
	Eof					reduce	40
	Lret					reduce	40
	Lnum					reduce	40
	Lcol					reduce	40
	Lplus					reduce	40
	Lprint					reduce	40
	Ldef					reduce	40
	Lbool					reduce	40

State 66
	operation -> sexpr . Lplus sexpr 
	operation -> sexpr . Lminus sexpr 
	operation -> sexpr . Lstar sexpr 
	operation -> sexpr . Lslash sexpr 
	operation -> sexpr . Lmod sexpr 
	operation -> sexpr . Lexpt sexpr 
	operation -> sexpr Lexpt sexpr . 
	operation -> sexpr . Land sexpr 
	operation -> sexpr . Lor sexpr 
	operation -> sexpr . Lsup sexpr 
	operation -> sexpr . Linf sexpr 
	operation -> sexpr . Lseq sexpr 
	operation -> sexpr . Lieq sexpr 
	operation -> sexpr . Leq sexpr 
	operation -> sexpr . Lneq sexpr 

	Lnot					reduce	32
	Lcomma					reduce	32
	Lor					reduce	32
	Lslash					reduce	32
	Lneq					shift	38
	Lsup					shift	33
	Lexpt					reduce	32
	Lif					reduce	32
	Lelse					reduce	32
	Lcot					reduce	32
	Lcpar					reduce	32
	Lmod					reduce	32
	Linf					shift	34
	Lid					reduce	32
	Lseq					shift	35
	Land					reduce	32
	Lwhile					reduce	32
	Leq					shift	37
	Lstar					reduce	32
	Lieq					shift	36
	Lminus					reduce	32
	Eof					reduce	32
	Lret					reduce	32
	Lnum					reduce	32
	Lcol					reduce	32
	Lplus					reduce	32
	Lprint					reduce	32
	Ldef					reduce	32
	Lbool					reduce	32

State 67
	declaration -> Lid Lassign sexpr . 
	operation -> sexpr . Lplus sexpr 
	operation -> sexpr . Lminus sexpr 
	operation -> sexpr . Lstar sexpr 
	operation -> sexpr . Lslash sexpr 
	operation -> sexpr . Lmod sexpr 
	operation -> sexpr . Lexpt sexpr 
	operation -> sexpr . Land sexpr 
	operation -> sexpr . Lor sexpr 
	operation -> sexpr . Lsup sexpr 
	operation -> sexpr . Linf sexpr 
	operation -> sexpr . Lseq sexpr 
	operation -> sexpr . Lieq sexpr 
	operation -> sexpr . Leq sexpr 
	operation -> sexpr . Lneq sexpr 

	Lnot					reduce	14
	Lneq					shift	38
	Lor					shift	31
	Lexpt					shift	39
	Lminus					shift	27
	Lseq					shift	35
	Lif					reduce	14
	Lmod					shift	29
	Linf					shift	34
	Lid					reduce	14
	Lslash					shift	32
	Land					shift	30
	Lwhile					reduce	14
	Lsup					shift	33
	Leq					shift	37
	Lstar					shift	28
	Lieq					shift	36
	Eof					reduce	14
	Lret					reduce	14
	Lnum					reduce	14
	Lplus					shift	26
	Lprint					reduce	14
	Ldef					reduce	14
	Lbool					reduce	14

State 68
	funcall -> Lid Lopar callargs . Lcpar 

	Lcpar					shift	77

State 69
	callargs -> sexpr . Lcomma fargs 
	callargs -> sexpr . 
	operation -> sexpr . Lplus sexpr 
	operation -> sexpr . Lminus sexpr 
	operation -> sexpr . Lstar sexpr 
	operation -> sexpr . Lslash sexpr 
	operation -> sexpr . Lmod sexpr 
	operation -> sexpr . Lexpt sexpr 
	operation -> sexpr . Land sexpr 
	operation -> sexpr . Lor sexpr 
	operation -> sexpr . Lsup sexpr 
	operation -> sexpr . Linf sexpr 
	operation -> sexpr . Lseq sexpr 
	operation -> sexpr . Lieq sexpr 
	operation -> sexpr . Leq sexpr 
	operation -> sexpr . Lneq sexpr 

	Land					shift	30
	Lcomma					shift	78
	Leq					shift	37
	Lneq					shift	38
	Lstar					shift	28
	Lcpar					reduce	20
	Lieq					shift	36
	Lexpt					shift	39
	Lminus					shift	27
	Lseq					shift	35
	Lor					shift	31
	Lplus					shift	26
	Lsup					shift	33
	Lmod					shift	29
	Linf					shift	34
	Lslash					shift	32

State 70
	callargs -> Lnil . 

	Lcpar					reduce	21

State 71
	test -> Lif expr Lcol . expr Lelse Lcol expr 

	Lnot					shift	14
	sexpr					goto	13
	while					goto	12
	nt					goto	9
	Lif					shift	18
	val					goto	10
	print					goto	7
	operation					goto	8
	Lnum					shift	15
	funcall					goto	6
	Lprint					shift	19
	Lwhile					shift	20
	Lret					shift	22
	test					goto	11
	Lbool					shift	16
	Lid					shift	48
	return					goto	5
	expr					goto	79

State 72
	print -> Lprint Lopar val . Lcpar 
	sexpr -> val . 

	Land					reduce	47
	Lslash					reduce	47
	Lneq					reduce	47
	Lstar					reduce	47
begin conflict:
	Lcpar					shift	80
	Lcpar					reduce	47
end conflict
	Lieq					reduce	47
	Lexpt					reduce	47
	Lminus					reduce	47
	Leq					reduce	47
	Lor					reduce	47
	Lplus					reduce	47
	Lsup					reduce	47
	Lmod					reduce	47
	Linf					reduce	47
	Lseq					reduce	47

State 73
	print -> Lprint Lopar sexpr . Lcpar 
	operation -> sexpr . Lplus sexpr 
	operation -> sexpr . Lminus sexpr 
	operation -> sexpr . Lstar sexpr 
	operation -> sexpr . Lslash sexpr 
	operation -> sexpr . Lmod sexpr 
	operation -> sexpr . Lexpt sexpr 
	operation -> sexpr . Land sexpr 
	operation -> sexpr . Lor sexpr 
	operation -> sexpr . Lsup sexpr 
	operation -> sexpr . Linf sexpr 
	operation -> sexpr . Lseq sexpr 
	operation -> sexpr . Lieq sexpr 
	operation -> sexpr . Leq sexpr 
	operation -> sexpr . Lneq sexpr 

	Land					shift	30
	Lneq					shift	38
	Lstar					shift	28
	Lor					shift	31
	Lieq					shift	36
	Lexpt					shift	39
	Lminus					shift	27
	Leq					shift	37
	Lseq					shift	35
	Lplus					shift	26
	Lsup					shift	33
	Lcpar					shift	81
	Lmod					shift	29
	Linf					shift	34
	Lslash					shift	32

State 74
	print -> Lprint Lopar Lcot . expr Lcot Lcpar 

	Lnot					shift	14
	sexpr					goto	13
	while					goto	12
	nt					goto	9
	Lif					shift	18
	val					goto	10
	print					goto	7
	operation					goto	8
	Lnum					shift	15
	funcall					goto	6
	Lprint					shift	19
	Lwhile					shift	20
	Lret					shift	22
	test					goto	11
	Lbool					shift	16
	Lid					shift	48
	return					goto	5
	expr					goto	82

State 75
	while -> Lwhile expr Lcol . expr 

	Lnot					shift	14
	sexpr					goto	13
	while					goto	12
	nt					goto	9
	Lif					shift	18
	val					goto	10
	print					goto	7
	operation					goto	8
	Lnum					shift	15
	funcall					goto	6
	Lprint					shift	19
	Lwhile					shift	20
	Lret					shift	22
	test					goto	11
	Lbool					shift	16
	Lid					shift	48
	return					goto	5
	expr					goto	83

State 76
	declaration -> Ldef Lid Lopar . fargs Lcpar Lcol expr 

	Lid					shift	85
	fargs					goto	84
	Lnil					shift	86

State 77
	funcall -> Lid Lopar callargs Lcpar . 

	Lnot					reduce	23
	Lwhile					reduce	23
	Lif					reduce	23
	Eof					reduce	23
	Lelse					reduce	23
	Lnum					reduce	23
	Lcol					reduce	23
	Lcot					reduce	23
	Lprint					reduce	23
	Ldef					reduce	23
	Lbool					reduce	23
	Lid					reduce	23
	Lret					reduce	23

State 78
	callargs -> sexpr Lcomma . fargs 

	Lid					shift	85
	fargs					goto	87
	Lnil					shift	86

State 79
	test -> Lif expr Lcol expr . Lelse Lcol expr 

	Lelse					shift	88

State 80
	print -> Lprint Lopar val Lcpar . 

	Lnot					reduce	26
	Lwhile					reduce	26
	Lif					reduce	26
	Eof					reduce	26
	Lelse					reduce	26
	Lnum					reduce	26
	Lcol					reduce	26
	Lcot					reduce	26
	Lprint					reduce	26
	Ldef					reduce	26
	Lbool					reduce	26
	Lid					reduce	26
	Lret					reduce	26

State 81
	print -> Lprint Lopar sexpr Lcpar . 

	Lnot					reduce	25
	Lwhile					reduce	25
	Lif					reduce	25
	Eof					reduce	25
	Lelse					reduce	25
	Lnum					reduce	25
	Lcol					reduce	25
	Lcot					reduce	25
	Lprint					reduce	25
	Ldef					reduce	25
	Lbool					reduce	25
	Lid					reduce	25
	Lret					reduce	25

State 82
	print -> Lprint Lopar Lcot expr . Lcot Lcpar 

	Lcot					shift	89

State 83
	while -> Lwhile expr Lcol expr . 

	Lnot					reduce	46
	Lwhile					reduce	46
	Lif					reduce	46
	Eof					reduce	46
	Lelse					reduce	46
	Lnum					reduce	46
	Lcol					reduce	46
	Lcot					reduce	46
	Lprint					reduce	46
	Ldef					reduce	46
	Lbool					reduce	46
	Lid					reduce	46
	Lret					reduce	46

State 84
	declaration -> Ldef Lid Lopar fargs . Lcpar Lcol expr 

	Lcpar					shift	90

State 85
	fargs -> Lid . Lcomma fargs 
	fargs -> Lid . 

	Lcpar					reduce	17
	Lcomma					shift	91

State 86
	fargs -> Lnil . 

	Lcpar					reduce	18

State 87
	callargs -> sexpr Lcomma fargs . 

	Lcpar					reduce	19

State 88
	test -> Lif expr Lcol expr Lelse . Lcol expr 

	Lcol					shift	92

State 89
	print -> Lprint Lopar Lcot expr Lcot . Lcpar 

	Lcpar					shift	93

State 90
	declaration -> Ldef Lid Lopar fargs Lcpar . Lcol expr 

	Lcol					shift	94

State 91
	fargs -> Lid Lcomma . fargs 

	Lid					shift	85
	fargs					goto	95
	Lnil					shift	86

State 92
	test -> Lif expr Lcol expr Lelse Lcol . expr 

	Lnot					shift	14
	sexpr					goto	13
	while					goto	12
	nt					goto	9
	Lif					shift	18
	val					goto	10
	print					goto	7
	operation					goto	8
	Lnum					shift	15
	funcall					goto	6
	Lprint					shift	19
	Lwhile					shift	20
	Lret					shift	22
	test					goto	11
	Lbool					shift	16
	Lid					shift	48
	return					goto	5
	expr					goto	96

State 93
	print -> Lprint Lopar Lcot expr Lcot Lcpar . 

	Lnot					reduce	24
	Lwhile					reduce	24
	Lif					reduce	24
	Eof					reduce	24
	Lelse					reduce	24
	Lnum					reduce	24
	Lcol					reduce	24
	Lcot					reduce	24
	Lprint					reduce	24
	Ldef					reduce	24
	Lbool					reduce	24
	Lid					reduce	24
	Lret					reduce	24

State 94
	declaration -> Ldef Lid Lopar fargs Lcpar Lcol . expr 

	Lnot					shift	14
	sexpr					goto	13
	while					goto	12
	nt					goto	9
	Lif					shift	18
	val					goto	10
	print					goto	7
	operation					goto	8
	Lnum					shift	15
	funcall					goto	6
	Lprint					shift	19
	Lwhile					shift	20
	Lret					shift	22
	test					goto	11
	Lbool					shift	16
	Lid					shift	48
	return					goto	5
	expr					goto	97

State 95
	fargs -> Lid Lcomma fargs . 

	Lcpar					reduce	16

State 96
	test -> Lif expr Lcol expr Lelse Lcol expr . 

	Lnot					reduce	45
	Lwhile					reduce	45
	Lif					reduce	45
	Eof					reduce	45
	Lelse					reduce	45
	Lnum					reduce	45
	Lcol					reduce	45
	Lcot					reduce	45
	Lprint					reduce	45
	Ldef					reduce	45
	Lbool					reduce	45
	Lid					reduce	45
	Lret					reduce	45

State 97
	declaration -> Ldef Lid Lopar fargs Lcpar Lcol expr . 

	Eof					reduce	15
	Lret					reduce	15
	Lwhile					reduce	15
	Lbool					reduce	15
	Lprint					reduce	15
	Ldef					reduce	15
	Lnot					reduce	15
	Lif					reduce	15
	Lid					reduce	15
	Lnum					reduce	15

1 shift/reduce conflict
