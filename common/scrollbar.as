	
	
	#module __SCROLLBAR__
	#uselib "user32.dll"
	#func	SetScrollInfo		"SetScrollInfo"		int, int, int, int
	#func	GetScrollInfo		"GetScrollInfo"		int, int, int
	#cfunc	GetSystemMetrics	"GetSystemMetrics"	int
	#define SIF_RANGE           $0001
	#define SIF_PAGE            $0002
	#define SIF_POS             $0004
	#define SIF_DISABLENOSCROLL $0008
	#define SIF_TRACKPOS        $0010
	#define SIF_ALL             (SIF_RANGE | SIF_PAGE | SIF_POS | SIF_TRACKPOS)
	#define SM_CXVSCROLL        2
	
	#define SB_CTL              2
	#define SB_LINEUP           0
	#define SB_LINELEFT         0
	#define SB_LINEDOWN         1
	#define SB_LINERIGHT        1
	#define SB_PAGEUP           2
	#define SB_PAGELEFT         2
	#define SB_PAGEDOWN         3
	#define SB_PAGERIGHT        3
	#define SB_THUMBTRACK       5
	
	// スクロールバー作成
	// CreateScrollBar 幅, 高さ, (0:横 1:縦), 最小値, 最大値, 空白押下時, 矢印押下時
	#deffunc CreateScrollBar int wdh, int hgt, int type, int nMin, int nMax, int space_mm, int arrow_mm
		dim si, 7
		si = 4*7, SIF_ALL | SIF_DISABLENOSCROLL, nMin
		if type\2 {	si.4 = ginfo_winy/4
		}else :		si.4 = ginfo_winx/4
		si.3 = nMax+si.4-1
		
		// 作成
		winobj "SCROLLBAR", "", 0, WS_CHILD | WS_VISIBLE*(1-type/2) | type\2, wdh, hgt, 0, 0
		scrbarID = stat
		
		// 表示
		SetScrollInfo objinfo(scrbarID, 2), SB_CTL, varptr(si), 1//-(0 < type/2)
		
		// 加算値保存
		ScrollBar_SetStep objinfo(scrbarID, 2), arrow_mm, space_mm
	return scrbarID
	
	// 加算値保存
	#deffunc ScrollBar_SetStep int hScrollBar, int arrow_mm, int space_mm
		slong hScrollBar, GWL_USERDATA, makelong(arrow_mm, space_mm)
	return
	
	// 移動を反映
	#deffunc MoveScrollBar
		nScrollCode = loword(wparam)
		if (0 <= nScrollCode && nScrollCode <= 3) || (nScrollCode == 5) {
			dim si, 7
			si = 4*7, SIF_ALL | SIF_DISABLENOSCROLL
			GetScrollInfo lparam, SB_CTL, varptr(si)
			si.7 = si.5		// 動いたチェック
			if nScrollCode == 5 {
				si.5 = si.6
			}else {
				if nScrollCode == 0 :si.5 -= hiword( glong(lparam, GWL_USERDATA) )
				if nScrollCode == 1 :si.5 += hiword( glong(lparam, GWL_USERDATA) )
				if nScrollCode == 2 :si.5 -= loword( glong(lparam, GWL_USERDATA) )
				if nScrollCode == 3 :si.5 += loword( glong(lparam, GWL_USERDATA) )
			}
			SetScrollInfo lparam, SB_CTL, varptr(si), 1
			GetScrollInfo lparam, SB_CTL, varptr(si)
		}
	return si.5
	
	// 位置移動
	#deffunc ScrollBar_SetPos int hScrollBar, int pos_
		dim si, 7
		si = 7 * 4, SIF_ALL | SIF_DISABLENOSCROLL
		GetScrollInfo hScrollBar, SB_CTL, varptr(si)
		si.5 = pos_
		SetScrollInfo hScrollBar, SB_CTL, varptr(si), 1
	return
	
	// 最小値, 最大値, 大きさ を変更
	#deffunc ScrollBar_SetRange int hScrollBar, int type, int nMin, int nMax, int size
		dim si, 7
		si = 4*7, SIF_ALL | SIF_DISABLENOSCROLL
		GetScrollInfo hScrollBar, SB_CTL, varptr(si)
		si(2) = nMin, nMax+size-1, size
		SetScrollInfo hScrollBar, SB_CTL, varptr(si), 1
	return
	
	// 最大値を取得
	#defcfunc ScrollBar_GetMax int hScrollBar
		dim si, 7
		si = 4*7, SIF_ALL | SIF_DISABLENOSCROLL
		GetScrollInfo hScrollBar, SB_CTL, varptr(si)
	return si.3-si.4+1
	#global
