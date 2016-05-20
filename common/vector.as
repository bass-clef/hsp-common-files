	
	#ifndef VECTOR_AS
	#define global VECTOR_AS
	
	#module __VECTOR__ array buf
	#uselib "vector.dll"
	#func	Init__	"Init"			int
	#func	Push__	"Push_Back"		int, int
	#func	Pop__	"Pop_Back"		int
	#cfunc	Back__	"Back"			int
	#cfunc	Front__	"Front"			int
	#cfunc	Clear__	"Clear"			int
	#cfunc	Size__	"Size"			int
	#cfunc	At__	"At"			int, int
	
	// [var v]を ベクターのポインタとして使う
	#deffunc vUsing var v
		pt = varptr(v)
		Init__ pt
	return
	
	// [var v]に ベクターのポインタを入れる
	#deffunc vInit var v
		Init__ varptr(v)
	return
	
	// 内部変数[buf]に ベクターのポインタを入れる
	#deffunc vvpInit int param
		Init__ varptr(buf.param)
	return
	
	// クリア
	#deffunc vClear
	return Clear__(pt)
	
	// [pt]にあるポインタを使って 一つスタックに積む
	#deffunc vPush int value
		Push__ pt, value
	return
	
	// 一つスタックから降ろす
	#deffunc vPop
		Pop__ pt
	return
	
	// 一番最後のスタックを読む
	#defcfunc vBack
	return Back__(pt)
	
	// 一番最初のスタックを読む
	#defcfunc vFront
	return Front__(pt)
	
	// [index]番目のスタックを読む
	#defcfunc vAt int index
	return At__(pt, index)
	
	// 全体の長さを得る
	#defcfunc vSize
	return Size__(pt)
	
	
	// 変数指定
	// クリア
	#deffunc vpClear var v
	return Clear__(varptr(v))
	
	// [var v]にあるポインタを使って 一つスタックに積む
	#deffunc vpPush var v, int value
		Push__ varptr(v), value
	return
	
	// 一つスタックから降ろす
	#deffunc vpPop var v
		Pop__ varptr(v)
	return
	
	// 一番最後のスタックを読む
	#defcfunc vpBack var v
	return Back__(varptr(v))
	
	// 一番最初のスタックを読む
	#defcfunc vpFront var v
	return Front__(varptr(v))
	
	// [index]番目のスタックを読む
	#defcfunc vpAt var v, int index
	return At__(varptr(v), index)
	
	// 全体の長さを得る
	#defcfunc vpSize var v
	return Size__(varptr(v))
	
	
	// 内部変数指定
	// [buf.param]にあるポインタを使って 一つスタックに積む
	#deffunc vvpPush int param, int value
		Push__ varptr(buf.param), value
	return
	
	// 一つスタックから降ろす
	#deffunc vvpPop int param
		Pop__ varptr(buf.param)
	return
	
	// 一番最後のスタックを読む
	#defcfunc vvpBack int param
	return Back__(varptr(buf.param))
	
	// 一番最初のスタックを読む
	#defcfunc vvpFront int param
	return Front__(varptr(buf.param))
	
	// [index]番目のスタックを読む
	#defcfunc vvpAt int param, int index
	return At__(varptr(buf.param), index)
	
	// 全体の長さを得る
	#defcfunc vvpSize int param
	return Size__(varptr(buf.param))
	#global
	
	#endif
	
	/* Multiple Test *
	font msgothic, 16
	vInit v1
	vUsing v2
	
	vpPush v1, 100
	vPush 200
	vPush 300
	
	mes "v1 size  : "+vpSize(v1)
	mes "v1 back  : "+vpBack(v1)
	mes "v1 front : "+vpFront(v1)
	
	mes "v2 size  : "+vSize()
	mes "v2 back  : "+vBack()
	mes "v2 front : "+vFront()
	
	repeat vpSize(v1)
		vpPop v1
	loop
	repeat vSize()
		vPop
	loop
	
	mes "v1 size  : "+vpSize(v1)
	mes "v2 size  : "+vSize()
	mes "Complate"
	/**/
	
	/* Number Test *
	font msgothic, 10
	vUsing v
	cy = ginfo_cy
	repeat 1000
		vPush cnt
		redraw 0
		colorwhite :boxf 0, cy, 100, cy+10 :color
		pos 0, cy :mes vAt(cnt)
		redraw 1
		await
	loop
	
	mes "back  : "+vBack()
	mes "front : "+vFront()
	mes "size  : "+vSize()
	
	cy = ginfo_cy
	repeat vSize()
		redraw 0
		colorwhite :boxf 0, cy, 100, cy+10 :color
		pos 0, cy :mes vBack()
		redraw 1
		vPop
		await
	loop
	
	mes "size  : "+vSize()
	mes "Complete"
	/**/
	
