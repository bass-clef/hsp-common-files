	
	#module __Draw__
	//read outside function of local from windowsAPI
	#uselib "user32.dll"
	#func	FillRect		"FillRect"			int, var, int
	#func	FrameRect		"FrameRect"			int, var, int
	#func	ReleaseDC		"ReleaseDC"			int, int
	#func	SetWindowLongA	"SetWindowLongA"	int, int, int
	#func	SetWindowPos	"SetWindowPos"		int, int, int, int, int, int, int
	#cfunc	ChildWindowFPT	"ChildWindowFromPoint"	int, int, int
	#cfunc	GetDC			"GetDC"				int
	#cfunc	GetAncestor		"GetAncestor"		int, int
	#cfunc	GetWindowLongA	"GetWindowLongA"	int, int
	#cfunc	WindowFromPoint	"WindowFromPoint"	int, int
	#uselib "gdi32.dll
	#func	Arc				"Arc"				int, int, int, int, int, int, int, int, int
	#func	DeleteObject	"DeleteObject"		int
	#func	Ellipse			"Ellipse"			int, int, int, int, int
	#func	SelectObject	"SelectObject"		int, int
	#func	SetDCBrushColor	"SetDCBrushColor"	int, int
	#func	SetDCPenColor	"SetDCPenColor"		int, int
	#func	TextOutA		"TextOutA"			int, int, int, str, int
	#cfunc	CreatePen		"CreatePen"			int, int, int
	#cfunc	CreateSolidBrush"CreateSolidBrush"	int
	#cfunc	GetCurrentObject"GetCurrentObject"	int, int
	#cfunc	GetPixel		"GetPixel"			int, int, int
	
	/* Object Definitions for EnumObjects() */
	#define OBJ_PEN             1
	#define OBJ_BRUSH           2
	#define OBJ_DC              3
	#define OBJ_METADC          4
	#define OBJ_PAL             5
	#define OBJ_FONT            6
	#define OBJ_BITMAP          7
	#define OBJ_REGION          8
	#define OBJ_METAFILE        9
	#define OBJ_MEMDC           10
	#define OBJ_EXTPEN          11
	#define OBJ_ENHMETADC       12
	#define OBJ_ENHMETAFILE     13
	#define OBJ_COLORSPACE      14

	
	//undefinition global macro
//	#undef circle
	#undef boxf
	#undef redraw
	#undef pget
	
	//definition global function
	#define global oneline(%1, %2=0xFFFFFF, %3=0, %4=0) redraw@hsp 0 :color@hsp RR(%2), GG(%2), BB(%2) :boxf@hsp :color@hsp :pos@hsp %3, %4 :mes@hsp %1 :redraw@hsp 1
	#define global boxf(%1 = 0, %2 = 0, %3 = INT_MAX, %4 = INT_MAX, %5 = 1, %6 = 0) func %1, %2, %3, %4, %5+1, %6
//	#define global circle(%1 = 0, %2 = 0, %3 = INT_MAX, %4 = INT_MAX, %5 = 1, %6 = 0) func %1, %2, %3, %4, %5+3, %6
	#define global redraw(%1 = 1, %2 = 0, %3 = 0, %4 = 0, %5 = 0) redraw@hsp %1, %2, %3, %4, %5 :if (%1) == 0 {red@__Draw__ = 1 }else {red@__Draw__ = 0}
	#define global pget(%1, %2, %3 = 0) func %1, %2, 0, 0, 5, %3
	
	//ALL function
	#deffunc func int x1, int y1, int x2, int y2, int flag, int handle
		ret = 0
		switch flag
		case 1 :case 2 :case 3 :case 4
			rc = x1, y1, x2, y2
			if x2 == INT_MAX :rc.2 = ginfo(12)
			if y2 == INT_MAX :rc.3 = ginfo(13)
			if handle == 0 :hdc_ = hdc@hsp :else :hdc_ = handle
			swbreak
		swend
		
		switch flag
		case 1 :case 2//definition of boxf(xPos, yPos, xSize, ySize, (1:“h‚è‚Â‚Ô‚µ), hDC)
			SetDCBrushColor hdc_, RGB(ginfo_r, ginfo_g, ginfo_b)
			if flag == 1 {
				FrameRect hdc_, rc, GethBrush()
			}else {
				FillRect hdc_, rc, GethBrush()
			}
			swbreak
		case 3 :case 4//definition of circle(xPos, yPos, xSize, ySize, (1:“h‚è‚Â‚Ô‚µ), hDC)
			SetDCPenColor hdc_, RGB(ginfo_r, ginfo_g, ginfo_b)
			SetDCBrushColor hdc_, RGB(ginfo_r, ginfo_g, ginfo_b)
			if flag == 3 :Arc hdc_, rc.0, rc.1, rc.2, rc.3, rc.0, rc.1, rc.0, rc.1 :else :Ellipse hdc_, rc.0, rc.1, rc.2, rc.3
			swbreak
		case 5//pget xPos, yPos, hDC
			if handle == 0 :hdc_ = hdc@hsp :else :hdc_ = handle
			ret = GetPixel(hdc_, x1, y1)
			color RR(ret), GG(ret), BB(ret)
			swbreak
		swend
		
		switch flag
		case 1 :case 2 :case 3 :case 4
			ret = hdc_
			swbreak
		swend
		if red == 0 :redraw 1
	return ret
	
	//undefinition global macro
//	#undef hdc
//	#undef hwnd
	
	//definition global function
	#define global ctype hexdc(%1 = 0) cfunc(0, 0, 0, 0, 1, %1)
	#define global ctype hexwnd(%1 = 0xFFFFFF, %2 = 0xFFFFFF, %3 = 0, %4 = 0) cfunc(%1, %2, 0, 0, 2+%4, %3)
	
	//definition global orignal function of normal or c-type
	#define	global vpget vpget_
	#define global vpset vpset_
	#define vram_pointer	5
	#define vram_size		16
	#defcfunc vpget_ int px_, int py_, int xmax_, int ymax_
		mref vram_, 66
		
		index_ = (ymax_ - 1 - py_) * ((xmax_ * 3 + 3) & 0xFFFFFFFC) + (px_ * 3)
		
		//vram”²‚«Žæ‚è
	return RGB(peek(vram_, index_+2), peek(vram_, index_+1), peek(vram_, index_))
	#deffunc vpset_ int px_, int py_, int xmax_, int ymax_, int colorref_
		if (px_ >= xmax_) || (py_ >= ymax_) :return
		if (px_ < 0) || (py_ < 0) :return
		
		mref vram_, 66
		
		index_ = xmax_ * ymax_ - ((py_ + 1) * xmax_ - px_)
		
		//vram‘‚«Š·‚¦
		poke vram_, index_*3+2, RR(colorref_)	//R
		poke vram_, index_*3+1, GG(colorref_)	//G
		poke vram_, index_*3, BB(colorref_)	//B
	return
	
	//ALL function type-c
	#defcfunc cfunc int cx1, int cy1, int cx2, int cy2, int cflag, int chandle
		ret = 0
		switch cflag
		case 1//get hdc
			if chandle == 0 {//my hdc
				ret = hdc@hsp
			}else {//other hdc
				if rel(0) == 1 :Release
				ret = GetDC(chandle)
				rel = 1, ret, chandle
			}
			swbreak
		case 2//get hwnd
			if chandle == 0 {//ewindowŽæ“¾
				if (cx1 == 0xFFFFFF) | (cy1 == 0xFFFFFF) {
					ret = hwnd@hsp
				}else {
					ret = WindowFromPoint(cx1, cy1)
				}
			}else {//ŽqwindowŽæ“¾
				ret = ChildWindowFPT(chandle, cx1, cy1)
			}
			swbreak
		case 3//get hparentwnd
			ret = GetAncestor(chandle, 1)
			swbreak
		swend
	return ret
	
	//Release function type-onexit
	#deffunc Release onexit
		if rel(0) == 1 {
			ReleaseDC rel(1), rel(2)
			rel(0) = 0
		}
	return
	#global
