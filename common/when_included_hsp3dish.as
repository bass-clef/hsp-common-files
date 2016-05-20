	
	
	/*
	
	dish を使うときのできるだけ userdef.as 通常時のようにふるまえるようにするための追加ファイル
	
	*/
	
	
	#module __FOR_HSP3DISH__
	
	// undefinitions
	#undef getkey
	
	// redefinitions
	#define	global	getkey	getkey__
	
	// definition contents
	#defcfunc getkey__ int _keycode
		getkey@hsp _state, _keycode
		if _state :return 0x8000
	return 0
	
	#global
	
	
	
