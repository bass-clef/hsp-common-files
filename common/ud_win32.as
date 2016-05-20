	#module __Sys__
	//read outside function of local from windowsAPI
	#uselib "user32.dll"
	#func	AttachThreadInput	"AttachThreadInput"		int, int, int
	#func	BringWindowToTop	"BringWindowToTop"		int
	#func	DestroyWindow		"DestroyWindow"			int
	#func	EnableWindow		"EnableWindow"			int, int
	#func	GetClientRect		"GetClientRect"			int, var
	#func	GetWindowRect		"GetWindowRect"			int, var
	#func	SetActiveWindow		"SetActiveWindow"		int
	#func	SetForegroundWindow	"SetForegroundWindow"	int
	#func	SetWindowLongA		"SetWindowLongA"		int, int, int
	#func	SetWindowPos		"SetWindowPos"			int, int, int, int, int, int, int
	#func	SetWindowTextA		"SetWindowTextA"		int, str
	#cfunc	GetAsyncKeyState			"GetAsyncKeyState"			int
	#cfunc	GetForegroundWindow			"GetForegroundWindow"
	#cfunc	GetSystemMetrics			"GetSystemMetrics"			int
	#cfunc	GetWindowLongA				"GetWindowLongA"			int, int
	#cfunc	GetWindowThreadProcessId	"GetWindowThreadProcessId"	int, int
	#cfunc	IsWindow					"IsWindow"					int
	#cfunc	IsWindowVisible				"IsWindowVisible"			int
	#cfunc	MessageBoxA					"MessageBoxA"				int, str, str, int
	#cfunc	PostMessageA				"PostMessageA"				int, int, int, int
	
	#uselib "shlwapi.dll"
	#cfunc	PathIsDirectoryA"PathIsDirectoryA"	str
	
	#uselib "Comdlg32.dll"
	#cfunc	ChooseColorA	"ChooseColorA"		var
	#cfunc	GetOpenFileName	"GetOpenFileNameA"	int
	#cfunc	GetSaveFileName	"GetSaveFileNameA"	int
	
	#uselib "shell32.dll"
	#cfunc	SHBrowseForFolder	"SHBrowseForFolderA"		var
	#func	SHGetPathFromIDList	"SHGetPathFromIDListA"		int, var
	
	#uselib "ole32.dll"
	#func	OleInitialize		"OleInitialize"				nullptr
	#func	OleUninitialize		"OleUninitialize"
	#func	CoInitialize		"CoInitialize"				nullptr
	#func	CoTaskMemFree		"CoTaskMemFree"				int	
	
	#uselib "kernel32.dll"
	#cfunc	GetCurrentThreadId	"GetCurrentThreadId"
	
	#uselib "PointerEx.dll"
	#cfunc	strptr				"GetStrPointer"				str
	
	// local macro
	#define	BROWSEINFO(%1)	dim %1
	#define SM_CYCAPTION            4
	#define SM_CXDLGFRAME           7
	#define SM_CYDLGFRAME           8
	#define SM_CXFIXEDFRAME         SM_CXDLGFRAME
	#define SM_CYFIXEDFRAME         SM_CYDLGFRAME
	#define SM_CXFRAME              32
	#define SM_CYFRAME              33
	#define SM_CXSIZEFRAME          SM_CXFRAME
	#define SM_CYSIZEFRAME          SM_CYFRAME
	#define	CSIDL_DESKTOP			0		// デスクトップ
	#define	CSIDL_PROGRAMS			0x02	// windowsプログラム
	#define	CSIDL_CONTROLS			0x03	// コントロールパネル
	#define	CSIDL_PRINTERS			0x04	// プリンタ
	#define	CSIDL_PERSONAL			0x05	// My	Document
	#define	CSIDL_FAVORITIES		0x06	// Favorities
	#define	CSIDL_STARTUP			0x07	// スタートアップ
	#define	CSIDL_RECENT			0x08	// Recent
	#define	CSIDL_SENDTO			0x09	// SendTo
	#define	CSIDL_BITBUCKET			0x0A	// ごみ箱
	#define	CSIDL_STARTMENU			0x0B	// スタートメニュー
	#define	CSIDL_DESKTOPDIRECTORY	0x10	// Windowsﾃﾞｽｸﾄｯﾌﾟ
	#define	CSIDL_DRIVES			0x11	// マイコンピュータ
	#define	CSIDL_NETWORK			0x12	// ネットワーク
	#define	CSIDL_NETHOOD			0x13	// WindowsetHood
	#define	CSIDL_FONTS				0x14	// Windowsfont
	#define	CSIDL_TEMPLATES			0x15	// WindowsshellNew
	
	#define	BIF_RETURNNONLYFSDIRS	0x1		// ディレクトリのみ選択可能
	#define	BIF_DONTGOBELOWDOMAIN	0x2		// ネットワークフォルダを含まない
	#define	BIF_STATUSTEXT			0x4		// ダイアログボックスにステータス表示領域を追加する
	#define	BIF_RETURNSANCESTORS	0x8		// 親ディレクトリのみ選択できるようにする
	#define	BIF_EDITBOX				0x10	// アイテム名入力用のテキストボックスを追加する
	#define	BIF_VALIDATE			0x20	// 無効なアイテム名が入力されたときコールバック関数のBrowseCallbackProcを呼び出す
	#define	BIF_NEWDIALOGSTYLE		0x40	// 新しいユーザーインターフェースを使用します。従来のダイアログボックスよりも大きい、リサイズ可能なダイアログボックスが表示され、ダイアログボックスへのドラッグアンドドロップ、フォルダの再整理、ショートカットメニュー、新しいフォルダ作成、削除、その他のショートカットメニューコマンドが追加されます。
	// このフラグを使用するには、あらかじめOleInitialize関数またはCoInitialize関数を呼び出してCOMを初期化しておく必要があります。

	#define	BIF_USENEWUI			0x50	// このフラグはBIF_EDITBOX|BIF_NEWDIALOGSTYLEと同等です。
	// このフラグを使用するには、あらかじめOleInitialize関数またはCoInitialize関数を呼び出してCOMを初期化しておく必要があります。
	
	#define	BIF_BROWSEINCLUDEURLS	0x80	// URLを表示することができるようにします。
	// BIF_USENEWUIとBIF_BROWSEINCLUDEFILESを要指定。これらのフラグが設定されているとき、選択されたアイテムを含むフォルダがサポートする場合にのみ、URLが表示されます。アイテムの属性を問い合わせるためにフォルダのIShellFolder::GetAttributesOf メソッドが呼び出されたときに、フォルダによってSFGAO_FOLDER属性フラグが設定された場合にのみ、URLが表示されます。
	
	#define	BIF_UAHINT				0x100	// エディットコントロールの代わりに、ダイアログボックスに用法ヒントを追加します。
	// BIF_NEWDIALOGSTYLEフラグとともに指定しなければなりません。
	
	#define	BIF_NONEWFOLDERBUTTON	0x200	// [新しいフォルダ]ボタンを表示しない。
	// BIF_NEWDIALOGSTYLEフラグとともに指定しなければなりません。
	
	#define	BIF_NOTRANSLATETARGETS	0x400	// ショートカットであるとき、ショートカットファイル自体のPIDLを返します。
	#define	BIF_BROWSEFORCOMPUTER	0x1000	// コンピュータフォルダのみ選択可能
	#define	BIF_BROWSEFORPRINTER	0x2000	// プリンタフォルダのみ選択可能
	#define	BIF_BROWSEINCLUDEFILES	0x4000	// ファイルも表示する
	#define	BIF_SHAREABLE			0x8000	// リモートシステム上にある共有リソースを表示できるようにします。
	// BIF_USENEWUIフラグとともに指定しなければなりません


	// undefinition system macro
	#undef mousex
	#undef mousey
	#undef getkey
	#undef stick
	#undef notesel
	#undef noteget
	#undef cnvwtos
	#undef strmid
	#undef strtrim
	#undef input
	#undef instr
	#undef listbox
	#undef dialog
	#undef title
	
	// redefinition system macro
	#define global mousex mouse_x()
	#define global mousey mouse_y()
	#define global input(%1, %2 = -1, %3 = -1, %4 = 0, %5 = -1) input@__Sys__ %1, %2, %3, %4, %5
	#define global listbox(%1, %2, %3, %4 = -1) listbox_ %1, %2, %3, %4
	#define global title(%1, %2 = 0) funcs 0, 0, str(%1), 2, %2
	#define global postmsg(%1 = -1, %2, %3 = 0, %4 = 0) postmsg_ %1, %2, %3, %4
	#define global spos(%1 = hwnd@hsp, %2 = 0, %3 = 0, %4 = 0, %5 = 0, %6 = 0, %7 = 0x37) spos_ %1, %2, %3, %4, %5, %6, %7
	#define	global fullscr(%1 = 0, %2 = 0, %3 = 0, %4 = 0) bgscr %1, ginfo(20), ginfo(21), %2, %3, %4 :gsel %1, 2 :mouse -1, -1
	
	// redefinition system macro type-c
	#define global ctype stick(%1 = 0, %2 = 1) stick_(%1, %2)
	
	// definition function
	#define global smove(%1, %2, %3 = 0) funcs %1, %2, "", 0, %3
	#define global ssize(%1, %2, %3 = 0) funcs %1, %2, "", 1, %3
	#define global slong(%1 = 0, %2, %3) funcs %2, %3, "", 3, %1
	#define global fgsel(%1 = 0, %2 = 0) funcs %1, %2, "", 5, 0
	
	// definition function type-c
	#define global ctype winfo(%1 = 0, %2 = hwnd@hsp) cfuncs(%1, "", %2)
	#define global ctype isdir(%1) cfuncs(28, %1, 0)
	#define global ctype iswin(%1 = hwnd@hsp) cfuncs(29, "", %1)
	#define global ctype iswinvis(%1 = hwnd@hsp) cfuncs(37, "", %1)
	#define global ctype glong(%1 = hwnd@hsp, %2) cfuncs(30, "", %1, %2)
	#define global ctype gtext(%1 = hwnd@hsp) cfuncs(35, "", %1)
	#define global ctype ghwnd(%1 = 0) cfuncs(36, "", 0, %1)
	
	#deffunc spos_ int i1, int i2, int i3, int i4, int i5, int i6, int i7
		SetWindowPos i1, i2, i3, i4, i5, i6, i7
	return
	#deffunc postmsg_ int hWnd_, int uMsg, int wp, int lp
	return PostMessageA(hWnd_, uMsg, wp, lp)
	#defcfunc mouse_x			//mousex
		void double((ginfo(10)-ginfo(12))/2)
		if Ino(ginfo(4)+refdval, ginfo(6)-refdval, ginfo(0)) :return mousex@hsp
	return -1
	#defcfunc mouse_y			//mousey
		void double((ginfo(10)-ginfo(12))/2)
		void ginfo(11)-ginfo(13)-marx
		if Ino(ginfo(5)+stat, ginfo(7)-refdval, ginfo(1)) :return mousey@hsp
	return -1
	#defcfunc getkey int keycode//getkey
	return GetAsyncKeyState(keycode)
	#defcfunc stick_ int stick_nottype, int stick_active, local stick_key
		stick@hsp stick_key, stick_nottype, stick_active
	return stick_key
	#deffunc notesel str notesel_str
		sdim notesel_buf, strlen(notesel_str)
		notesel_buf = notesel_str
		notesel@hsp notesel_buf
	return 
	#defcfunc noteget int noteget_index
		sdim noteget_buf
		noteget@hsp noteget_buf, noteget_index
	return noteget_buf
	#defcfunc cnvwtos int cnv_numbar//cnvwtos
		ms = cnv_numbar
	return cnvwtos@hsp(ms)
	#defcfunc strmid str strmid_str, int strmid_index, int strmid_length//strmid
		str_ = strmid_str
	return strmid@hsp(str_, strmid_index, strmid_length)
	#defcfunc strtrim str strtrim_str, int strtrim_index, int strtrim_word
		str_ = strtrim_str
	return strtrim@hsp(str_, strtrim_index, strtrim_word)
	#defcfunc instr str instr_str, int instr_index, str instr_searchstr
		instr_buf = instr_str
	return instr@hsp(instr_buf, instr_index, instr_searchstr)
	#deffunc input@__Sys__ var input_var, int input_xSize, int input_ySize, int input_length, int input_type
		if input_xSize == -1 :xSize = winfo(31) :else :xSize = input_xSize
		if input_ySize == -1 :ySize = winfo(32) :else :ySize = input_ySize
		input@hsp input_var, xSize, ySize, input_length :ret = stat
		if input_type != -1 {
			SetWindowLongA objinfo(ret, 2), -20, input_type
			SetWindowPos objinfo(ret, 2),,,,,, 0x37
		}
	return ret
	#deffunc listbox var listbox_var, int listbox_int, str listbox_str, int listbox_exstyle
		listbox@hsp listbox_var, listbox_int, listbox_str
		ret = stat
		if listbox_exstyle > 0 {
			//水平スクロールバー付き
			if listbox_exstyle == 1 :SetWindowLongA objinfo(ret, 2), -16, 0x100000|GetWindowLongA(objinfo(ret, 2), -16) :SetWindowPos objinfo(ret, 2),,,,,, 0x37
		}
	return ret
	#define global dialog(%1 = "", %2 = 0, %3 = "", %4 = hwnd@hsp) dialog_ %1, %2, %3, %4
	#define global isdialog iswinvis(hSubWnd@__Sys__)
	#define global dlgfor repeat :if isdialog == 0 {break}
	#deffunc dialog_ str dialog_mes, int dialog_type, str dialog_opt, int hwnd_
		//return	0:notselect	1:select	2:cancel	3:abort
		//			4:retry		5:ignore	6:yes		7:no
		ret = 0
		switch dialog_type
		case 16//file open
			dim ofn, 19
			ofn.0 = 76, hwnd_
			sdim str_, 256 :memset str_, 0, 255
			if dialog_mes == "" {
				str_ = strf("All files (*.*)%c*.*%c%c", 1, 1, 1)
			}else {
				str_ = strf("%s (%s)%c*.%s%c", dialog_opt, dialog_mes, 1, dialog_mes, 1)
				str_ += strf("All files (*.*)%c*.*%c%c", 1, 1, 1)
			}
			repeat strlen(str_) :if peek(str_, cnt) == 1 { poke str_, cnt, 0 } :loop
			ofn.3 = varptr(str_)
			mref refstr_, 65
			ofn.7 = varptr(refstr_)
			ofn.8 = MAX_PATH
			tit_ = "ファイルを開く"
			ofn.12 = varptr(tit_)
			ofn.13 = 0x00800000 | 0x00080000 | 0x00020000
			ofn.15 = strptr(refstr)
			ret = GetOpenFileName(varptr(ofn))
			swbreak
		case 17//file save
			dim ofn, 19
			ofn.0 = 76, hwnd_
			sdim str_, 256 :memset str_, 0, 255
			if dialog_mes == "" {
				str_ = strf("All files (*.*)%c*.*%c%c", 1, 1, 1)
			}else {
				str_ = strf("%s (%s)%c*.%s%c", dialog_opt, dialog_mes, 1, dialog_mes, 1)
				str_ += strf("All files (*.*)%c*.*%c%c", 1, 1, 1)
			}
			repeat strlen(str_) :if peek(str_, cnt) == 1 {poke str_, cnt, 0 } :loop
			ofn.3 = varptr(str_)
			mref refstr_, 65
			ofn.7 = varptr(refstr_)
			ofn.8 = MAX_PATH
			tit_ = "名前をつけて保存"
			ofn.12 = varptr(tit_)
			ofn.13 = 0x00800000 | 0x00080000 | 0x00020000 | 0x2
			ofn.15 = strptr(refstr)
			ret = GetSaveFileName(varptr(ofn))
			swbreak
		case 32//color select
			dialog@hsp dialog_mes, 32, dialog_opt :ret = stat :swbreak
		case 33//color select (Free)
			dialog@hsp dialog_mes, 33, dialog_opt :ret = stat :swbreak
		case 35//color select (All Free)
			if length(cr) == 1 {
				dim cr, 16
				repeat 16 :cr(cnt) = RGB(255, 255, 255) :loop
			}
			if strlen(dialog_opt) {
				notesel dialog_opt
				repeat notemax
					if strmid(noteget(cnt), 0, 1) == "$" {
						cr(cnt) = int("$"+noteget(cnt))
					}else {
						cr(cnt) = int(noteget(cnt))
					}
				loop
			}
			dim cc, 9
			cc(0) = 36, hwnd_, 0
			cc(3) = RGB(ginfo_r, ginfo_g, ginfo_b)
			cc(4) = varptr(cr)
			cc(5) = 0x03
			
			ret = ChooseColorA(cc)
			if ret :color RR(cc(3)), GG(cc(3)), BB(cc(3))
			swbreak
		case 64// modal dialog
			if dialog_mes == "" :w_new = ginfo_newid :else :w_new = int(dialog_mes)
			iMainWnd = ginfo_sel
			hMainWnd = hwnd_
			EnableWindow hMainWnd, 0
			screen w_new, winfo(31), winfo(32), 4, (ginfo(20)-winfo(31))/2, (ginfo(21)-winfo(32))/2
			hSubWnd = hwnd@hsp
			title@hsp dialog_opt
			style = GetWindowLongA(hSubWnd, -16)
			SetWindowLongA hSubWnd, -16, style & 0x00070000 ^ style
			SetWindowLongA hSubWnd,  -8, hMainWnd
			SetWindowPos hSubWnd,,,,,, 0x37
			onexit gosub *modal_exit
			ret = w_new
			swbreak
		case 66// folder select
			// Ole 初期化
			OleInitialize
			
			BROWSEINFO bi
		
			bi.0 = hwnd_					// オーナーウィンドウHandle
			bi.1 = CSIDL_DESKTOP			// ルートフォルダを表すポインタ変数
			sdim szDisplayName, MAX_PATH
			bi.2 = varptr(szDisplayName)	// ユーザーに選択されたアイテムの表示名を格納するバッファのアドレス
			location = dialog_mes
			bi.3 = varptr(location)		// 上部に表示される文字列のアドレス
			bi.4 = BIF_RETURNNONLYFSDIRS | BIF_DONTGOBELOWDOMAIN | BIF_USENEWUI
			bi.5 = NULL						// コールバック関数のアドレス, それに渡すLPARAM
			bi.6 = NULL						// 選択されたフォルダと関連付けられるイメージの、システムイメージリスト中におけるインデックスが格納されます。
			piil = SHBrowseForFolder(bi)
			
			if piil {
				sdim szDisplayName, MAX_PATH
				SHGetPathFromIDList piil, szDisplayName
				ret = stat
				
				CoTaskMemFree piil
			}else :void 0 :void str("")
			
			OleUninitialize	// Ole 切り離し
			void str(szDisplayName)	// refstrへ代入
			swbreak
		default
			// 0:[i]icon(40) 1:[△]icon(30) 2:[x]icon(10) 3:[?]button(20)
			dialog_style = 0x40000// OK TOPMOST
			if dialog_type/2 == 1 :dialog_style += 4// Yes No button
			if dialog_type/2 == 2 :dialog_style += 1// OK Cancel button
			if dialog_type/2 == 3 :dialog_style += 3// Yes No Cancel button
			if dialog_type/2 == 4 :dialog_style += 5// Retry Cancel button
			if dialog_type/2 == 5 :dialog_style += 2// abort retry ignore button
			if dialog_type\2 :dialog_style += 0x30 :else :dialog_style += 0x40
			ret = MessageBoxA(hwnd_, dialog_mes, dialog_opt, dialog_style)
		swend
	return ret
*modal_exit
	if wparam == w_new :deldialog
	return
	#define	global	dlgdel	deldialog
	#deffunc deldialog
		onexit 0
		gsel w_new, -1
		EnableWindow hMainWnd, 1
		gsel iMainWnd
	return
	
	//ALL function
	#deffunc funcs int x1, int y1, str text, int flag, int handle
		ret = 0
		if handle == 0 :hwnd_ = hwnd@hsp :else :hwnd_ = handle
		switch flag
		case 0	// window move
			SetWindowPos hwnd_, 0, x1, y1, 0, 0, 0x35 :swbreak
		case 1	// window resize
			SetWindowPos hwnd_, 0, 0, 0, x1, y1, 0x36 :swbreak
		case 2	// window title
			SetWindowTextA hwnd_, text :swbreak
		case 3	// set window long
			SetWindowLongA hwnd_, x1, y1
			SetWindowPos hwnd_,,,,,, 0x37
			swbreak
		case 4	// set pos
			SetWindowPos hwnd_,,,,,, 0x37 :swbreak
			swbreak
		case 5	// force gsel
			if y1 <= 0 {
				gsel x1, y1
				return
			}
	
			gsel x1, 0
			foregroundThreadId = GetWindowThreadProcessId(GetForegroundWindow(), null)
			currentThreadId = GetCurrentThreadId()
	
			if foregroundThreadId == currentThreadId {
				BringWindowToTop hwnd
			} else {
				AttachThreadInput currentThreadId, foregroundThreadId, true
				SetForegroundWindow hwnd
				AttachThreadInput currentThreadId, foregroundThreadId, false
			}
		
			if 2 == y1 :spos hwnd, -1, 0, 0, 0, 0, 3
			swbreak
		swend
	return ret
	
	//ALL function type-c
	#defcfunc cfuncs int cflag, str ctext, int chandle, int cprms1
		ret = 0
		switch cflag
		case 4 :case 5 :case 6 :case 7 :case 10 :case 11
		//window left top right bottom xSize ySize
			dim rc, 4
			GetWindowRect chandle, rc
			// 子ウィンドウの親ウィンドウ内のクライアントエリア座標での座標取得
			hParent = glong(chandle, -8)
			if hParent != NULL {
				// 子
				dim rc2, 4
				GetWindowRect hParent, rc2
				rc.0 = rc.0-rc2.0, rc.1-rc2.1, rc.2-rc2.0, rc.3-rc2.1
				ret = glong(hParent, GWL_STYLE)
				if not(ret & WS_CHILD) && not(ret & WS_POPUP) {
					rc.1 -= GetSystemMetrics(SM_CYCAPTION)
					rc.3 -= GetSystemMetrics(SM_CYCAPTION)
				}
				
				if ret & WS_THICKFRAME {
					rc.0 -= GetSystemMetrics(SM_CXSIZEFRAME)		// サイズ可変
					rc.1 -= GetSystemMetrics(SM_CYSIZEFRAME)
					rc.2 -= GetSystemMetrics(SM_CXSIZEFRAME)
					rc.3 -= GetSystemMetrics(SM_CYSIZEFRAME)
				}elseif not(ret & WS_CHILD) && not(ret & WS_POPUP) {
					rc.0 -= GetSystemMetrics(SM_CXFIXEDFRAME)		// でない
					rc.1 -= GetSystemMetrics(SM_CYFIXEDFRAME)
					rc.2 -= GetSystemMetrics(SM_CXFIXEDFRAME)
					rc.3 -= GetSystemMetrics(SM_CYFIXEDFRAME)
				}
			}
			if cflag ==  4 :ret = rc(0) :swbreak
			if cflag ==  5 :ret = rc(1) :swbreak
			if cflag ==  6 :ret = rc(2) :swbreak
			if cflag ==  7 :ret = rc(3) :swbreak
			if cflag == 10 :ret = rc(2)-rc(0) :swbreak
			if cflag == 11 :ret = rc(3)-rc(1) :swbreak
		case 12 :case 13
		//window client xSize ySize
			dim rc, 4
			GetClientRect chandle, rc
			if cflag == 12 :ret = rc(2) :swbreak
			if cflag == 13 :ret = rc(3) :swbreak
			swbreak
		case 28//is this directry
			ret = PathIsDirectoryA(ctext) :swbreak
		case 29//is this Window
			ret = IsWindow(chandle) :swbreak
		case 30//get Window Style
			ret = GetWindowLongA(chandle, cprms1) :swbreak
		case 31 :case 32//get object size
			mref bmscr, 67
			if cflag == 31 :ret = bmscr(29) :swbreak
			if cflag == 32 :ret = bmscr(30) :swbreak
		case 33 :ret = ginfo(10)-ginfo(12) :ret /= 2 :swbreak
		case 34 :ret = ginfo(11)-ginfo(13) :ret /= 2 :swbreak
		case 35//get Window Title
			sendmsg chandle, WM_GETTEXTLENGTH, 0, 0
			void stat+1
			sdim ret, stat
			sendmsg chandle, WM_GETTEXT, stat, varptr(ret)
			swbreak
		case 36// get window handle
			mref bmscr, 96+cprms1
			ret = bmscr(13)
			swbreak
		case 37// is this window visible
			ret = IsWindowVisible(chandle) :swbreak
		swend
	return ret
	#global
