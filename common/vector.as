	
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
	
	// [var v]�� �x�N�^�[�̃|�C���^�Ƃ��Ďg��
	#deffunc vUsing var v
		pt = varptr(v)
		Init__ pt
	return
	
	// [var v]�� �x�N�^�[�̃|�C���^������
	#deffunc vInit var v
		Init__ varptr(v)
	return
	
	// �����ϐ�[buf]�� �x�N�^�[�̃|�C���^������
	#deffunc vvpInit int param
		Init__ varptr(buf.param)
	return
	
	// �N���A
	#deffunc vClear
	return Clear__(pt)
	
	// [pt]�ɂ���|�C���^���g���� ��X�^�b�N�ɐς�
	#deffunc vPush int value
		Push__ pt, value
	return
	
	// ��X�^�b�N����~�낷
	#deffunc vPop
		Pop__ pt
	return
	
	// ��ԍŌ�̃X�^�b�N��ǂ�
	#defcfunc vBack
	return Back__(pt)
	
	// ��ԍŏ��̃X�^�b�N��ǂ�
	#defcfunc vFront
	return Front__(pt)
	
	// [index]�Ԗڂ̃X�^�b�N��ǂ�
	#defcfunc vAt int index
	return At__(pt, index)
	
	// �S�̂̒����𓾂�
	#defcfunc vSize
	return Size__(pt)
	
	
	// �ϐ��w��
	// �N���A
	#deffunc vpClear var v
	return Clear__(varptr(v))
	
	// [var v]�ɂ���|�C���^���g���� ��X�^�b�N�ɐς�
	#deffunc vpPush var v, int value
		Push__ varptr(v), value
	return
	
	// ��X�^�b�N����~�낷
	#deffunc vpPop var v
		Pop__ varptr(v)
	return
	
	// ��ԍŌ�̃X�^�b�N��ǂ�
	#defcfunc vpBack var v
	return Back__(varptr(v))
	
	// ��ԍŏ��̃X�^�b�N��ǂ�
	#defcfunc vpFront var v
	return Front__(varptr(v))
	
	// [index]�Ԗڂ̃X�^�b�N��ǂ�
	#defcfunc vpAt var v, int index
	return At__(varptr(v), index)
	
	// �S�̂̒����𓾂�
	#defcfunc vpSize var v
	return Size__(varptr(v))
	
	
	// �����ϐ��w��
	// [buf.param]�ɂ���|�C���^���g���� ��X�^�b�N�ɐς�
	#deffunc vvpPush int param, int value
		Push__ varptr(buf.param), value
	return
	
	// ��X�^�b�N����~�낷
	#deffunc vvpPop int param
		Pop__ varptr(buf.param)
	return
	
	// ��ԍŌ�̃X�^�b�N��ǂ�
	#defcfunc vvpBack int param
	return Back__(varptr(buf.param))
	
	// ��ԍŏ��̃X�^�b�N��ǂ�
	#defcfunc vvpFront int param
	return Front__(varptr(buf.param))
	
	// [index]�Ԗڂ̃X�^�b�N��ǂ�
	#defcfunc vvpAt int param, int index
	return At__(varptr(buf.param), index)
	
	// �S�̂̒����𓾂�
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
	
