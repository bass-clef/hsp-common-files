	
	
	/*
	
	dish ���g���Ƃ��̂ł��邾�� userdef.as �ʏ펞�̂悤�ɂӂ�܂���悤�ɂ��邽�߂̒ǉ��t�@�C��
	
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
	
	
	
