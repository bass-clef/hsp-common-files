	
	
//	#include "callback.as"
	#addition "winmes.as"
	#addition "keycode.as"
	
	#define global DIR_HSPWORK "D:\\Program Files\\Hot Soup Processor 3.4"
	
	#ifdef _DEBUG
	#module
	#deffunc HSPErrorDialog
		sdim errtext
		notesel@hsp errtext
		noteload@hsp "C:\\hsp34\\HSPError.txt"
		noteget@hsp errstr, wparam-1
		dialog "#Error "+wparam+" in line "+lparam+"\n-->"+errstr, 1, "Call Error"
	return
	#global
	#else
	#define HSPErrorDialog logmes ""
	#endif
	
	#ifndef NOTUSE_USER_DEF_CALC
	#include "ud_calc.as"
	#endif
	
	#ifndef NOTUSE_USER_DEF_DRAW
	#include "ud_draw.as"
	#endif
	
	#ifndef NOTUSE_USER_DEF_ALPHA
	#include "ud_alpha.as"
	#endif
	
	#ifndef NOTUSE_USER_DEF_WIN32
	#include "ud_win32.as"
	#endif
	
