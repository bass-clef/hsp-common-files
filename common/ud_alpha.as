	#module __ALPHA__
	//--Alpha blend Module--//
	//・使用した後は gmode のモードが 0 になります
	//--------------------//
	#define global setmainwindow(%1 = INT_MAX) if %1 == INT_MAX :main_id@__ALPHA__ = ginfo_act :else :main_id@__ALPHA__ = %1
	#define global aline(%1 = 0, %2 = 0, %3 = 0xFFFFFF, %4 = 0xFFFFFF, %5 = 255) gfunc %1, %2, %3, %4, %5, 0
	#define global aboxf(%1 = 0, %2 = 0, %3 = 0xFFFFFF, %4 = 0xFFFFFF, %5 = 255) gfunc %1, %2, %3, %4, %5, 1
	#define global acircle(%1 = 0, %2 = 0, %3 = 0xFFFFFF, %4 = 0xFFFFFF, %5 = 255) gfunc %1, %2, %3, %4, %5, 2
	#define global apset(%1 = 0, %2 = 0, %3 = 255) gfunc %1, %2, %1+1, %2+1, %3, 1
	#deffunc gfunc int x1, int y1, int x_2, int y_2, int alpha, int type
		if handle == 0 :hwnd_ = hwnd@hsp :else :hwnd_ = handle
		now_id = main_id
		if new_id == main_id :new_id = ginfo_newid
		col = RGB(ginfo_r, ginfo_g, ginfo_b)
		cola = RGB(255-ginfo_r, 255-ginfo_g, 255-ginfo_b)
		if x_2 == 0xFFFFFF :x2 = ginfo_cx :else :x2 = x_2
		if y_2 == 0xFFFFFF :y2 = ginfo_cy :else :y2 = y_2
		if x1 > x2 :xMax = x1-x2 :xMin = x2 :else :xMax = x2-x1 :xMin = x1
		if y1 > y2 :yMax = y1-y2 :yMin = y2 :else :yMax = y2-y1 :yMin = y1
		if (xMax <= 0) || (yMax <= 0) :return
		
		buffer new_id, xMax, yMax
		color RR(cola), GG(cola), BB(cola) :boxf
		color RR(col), GG(col), BB(col)
		
		switch type
		case 0//line
			line x2-x1, y2-y1, x1, y1
			swbreak
		case 1 :case 2//boxf, circle
			if type == 1 :boxf 0, 0, xMax, yMax
			if type == 2 :circle 0, 0, xMax, yMax
			swbreak
		swend
		
		gsel now_id, 1
		color RR(cola), GG(cola), BB(cola)
		gmode 4, xMax, yMax, alpha
		pos xMin, yMin :gcopy new_id, 0, 0, xMax, yMax
		
		color RR(col), GG(col), BB(col)
		gmode 0
	return
	#global
