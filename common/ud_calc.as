	
	#module __Calc__
	//undefinition macro
	#undef or
	#undef and
	#undef not
	
	//definition macro
	#define global NULL			0
	#define global FALSE		0
	#define global TRUE			1
	#define global CHAR_BIT		8		/* number of bits in a char */
	#define global SCHAR_MIN	(-128)	/* minimum signed char value */
	#define global SCHAR_MAX	127		/* maximum signed char value */
	#define global UCHAR_MAX	0xff	/* maximum unsigned char value */
	#define global MB_LEN_MAX	5		/* max. # bytes in multibyte char */
	#define global SHRT_MIN		(-32768)/* minimum (signed) short value */
	#define global SHRT_MAX		32767	/* maximum (signed) short value */
	#define global USHRT_MAX	0xffff	/* maximum unsigned short value */
	#define global INT_MIN		(-2147483647 - 1)	/* minimum (signed) int value */
	#define global INT_MAX		2147483647	/* maximum (signed) int value */
	#define global UINT_MAX		0xffffffff	/* maximum unsigned int value */
	#define global LONG_MIN		(-2147483647 - 1)	/* minimum (signed) long value */
	#define global LONG_MAX		2147483647	/* maximum (signed) long value */
	#define global ULONG_MAX	0xffffffff	/* maximum unsigned long value */
	#define global LLONG_MAX	9223372036854775807		/* maximum signed long long int value */
	#define global LLONG_MIN	(-9223372036854775807 - 1)  /* minimum signed long long int value */
	#define global ULLONG_MAX	0xffffffffffffffff		/* maximum unsigned long long int value */
	#define global MAX_PATH		260
	#define	global ctype not(%1)	((%1) == 0)
	#define	global ctype or(%1, %2 = %1, %3 = 0, %4 = 0, %5 = 0, %6 = 0, %7 = 0, %8 = 0, %9 = 0, %10 = 0)	((%1 == %2) || (%1 == %3) || (%1 == %4) || (%1 == %5) || (%1 == %6) || (%1 == %7) || (%1 == %8) || (%1 == %9) || (%1 == %10) )
	#define global ctype and(%1, %2 = %1, %3 = %1, %4 = %1, %5 = %1, %6 = %1, %7 = %1, %8 = %1, %9 = %1, %10 = %1)	((%1 == %2) && (%1 == %3) && (%1 == %4) && (%1 == %5) && (%1 == %6) && (%1 == %7) && (%1 == %8) && (%1 == %9) && (%1 == %10) )
	#define	global ctype nor(%1, %2 = %1, %3 = %1, %4 = %1, %5 = %1, %6 = %1, %7 = %1, %8 = %1, %9 = %1, %10 = %1)	not(((%1 == %2) || (%1 == %3) || (%1 == %4) || (%1 == %5) || (%1 == %6) || (%1 == %7) || (%1 == %8) || (%1 == %9) || (%1 == %10) ))
	#define global ctype nand(%1, %2 = %1, %3 = %1, %4 = %1, %5 = %1, %6 = %1, %7 = %1, %8 = %1, %9 = %1, %10 = %1)	not(((%1 == %2) && (%1 == %3) && (%1 == %4) && (%1 == %5) && (%1 == %6) && (%1 == %7) && (%1 == %8) && (%1 == %9) && (%1 == %10) ))
	#define global ctype bool(%1) (0 != (%1))
	#define global ctype LOBYTE(%1) (%1&0xFF)
	#define global ctype HIBYTE(%1)	((%1 >> 8) & 0xFF)
	#define global ctype In(%1 = 0, %2 = 0, %3, %4, %5, %6) ((%1<=%5) & (%5<=%3) & (%2<=%6) & (%6<=%4))
	#define global ctype Ino(%1 = 0, %2, %3) ((%1<=%3) & (%3<=%2))
	#define global ctype RR(%1 = 0) LOBYTE(%1)
	#define global ctype GG(%1 = 0) LOBYTE(%1>>8)
	#define global ctype BB(%1 = 0) LOBYTE(%1>>16)
	#define global ctype AA(%1 = 0) LOBYTE(%1 >> 24)
	#define global ctype RGB(%1 = 0, %2 = 0, %3 = 0) (int(%1) | int(%2)<<8 | int(%3)<<16)
	#define global ctype RGBA(%1 = 0, %2 = 0, %3 = 0, %4 = 0) (int(%1) | int(%2)<<8 | int(%3)<<16 | int(%4)<<24)
	#define global ctype RGBAA(%1 = 0, %2 = 0) (int(%1) | int(%2)<<24)
	#define global ctype RGBSUBAA(%1 = 0) (int(%1) & 0xFFFFFF)
	#define global ctype HIWORD(%1 = 0)	((%1>>16)&0xFFFF)
	#define global ctype LOWORD(%1 = 0)	(%1&0xFFFF)
	#define global ctype MAKEWORD(%1 = 0, %2 = 0)	(%1|%2<<16)
	#define global elif(%1) else :if %1
	#define global elseif(%1) else :if %1
	#define global colorwhite color 255, 255, 255
	#define global colorgray color 128, 128, 128
	#define global void(%1) %tvoid %i = %1 :void_var %o
	
	#deffunc void_var var void_var_
	return void_var_
	
	#define global makelong makelong__
	#defcfunc makelong__ int a, int b
		i = 0
		wpoke i, 0, a
		wpoke i, 2, b
	return i
	
	#define global wordToInt wordToInt__
	#defcfunc wordToInt__ int word
		if 32768 <= word :return word - 65536
	return word
	
	#define global GethBrush GethBrush__
	#defcfunc GethBrush__
		mref ret, 67
	return ret.36
	
	#define global GethFont GethFont__
	#defcfunc GethFont__
		mref ret, 67
	return ret.38
	
	#define global strnum strnum__
	#defcfunc strnum__ var strnum_var, int strnum_word
		ret = 0
		repeat strlen(strnum_var)
			if peek(strnum_var, cnt) == strnum_word :ret++
		loop
	return ret
	
	#define global sstr spestr
	#define global spestr spestr__
	#defcfunc spestr__ int index
		sdim str_, 2
		poke str_, 0, index
	return str_
	
	#define global strloop strloop__
	#defcfunc strloop__ str strloop_word, int strloop_num
		words = ""
		repeat strloop_num
			words += strloop_word
		loop
	return words
	
	#define global strsplit(%1, %2=1, %3, %4=INT_MAX) strsplit__ %1, %2, %3, %4
	#deffunc strsplit__ var strsplit_var, int strsplit_num, array dest, int strsplit_var_len
		if strsplit_var_len == INT_MAX :len = strlen(strsplit_var) :else :len = strsplit_var_len
		sdim dest, strsplit_num+1, len
		repeat len/strsplit_num
			memcpy dest.cnt, strsplit_var, strsplit_num, 0, cnt*strsplit_num
		loop
	return
	
	#define global ctype con(%1 = 0, %2 = 0, %3 = 0) con__(%1, %2, %3)
	#defcfunc con__ int conditional, var a, var b
		if conditional :return a
	return b
	
	#define global ctype isActiveObject(%1) isActiveObject__(%1)
	#defcfunc isActiveObject__ int objnum
		objsel -1
		if objnum == stat :return 1
	return 0
	#global

	
	
