	
	
	#module __RUBY__
	// 
	#defcfunc ruby str buffer_
		equa = buffer_
		set equa
		compile
	return refstr
	// 計算
	#defcfunc calc str equation
		set "dst = "+ equation +"\nprint(dst)"
		compile
		if error :return 0
	return int(refstr)
	
	// ruby用テキストファイル作成
	#deffunc makefile str file, int delflag
		RUBY_CODE_FILE = file
		delf = delflag
		error = 0
		sdim buf
		bsave RUBY_CODE_FILE, buf
	return
	#deffunc set str buffer_
		buf = buffer_
		bsave RUBY_CODE_FILE, buf, strlen(buf)
	return
	
	#defcfunc geterror
	return error
	// 実行
	#deffunc compile
		pipe "ruby \""+RUBY_CODE_FILE+"\"", dst
		if delf :delete RUBY_CODE_FILE
	return
	
	#uselib "hspext.dll"
	#func pipeexec	pipeexec	5
	#func pipeput	pipeput		0
	#func pipeget	pipeget		$83
	// 送信
	#deffunc pipe str cmd, var ln
		sdim buf :sdim ln
		pipeexec buf, cmd, 1
		if stat == 0 {
			error = 0
			repeat
				pipeget ln
				if stat == 0 {
					break
				}else :if stat == 3 {
					error = stat
				}
				wait 1
			loop
		}
	return buf
	#global
	
/**
	makefile ""+dir_desktop+"\\temp.rb", 1
	mes "["+calc("2+ex")+"]"
	
/**/
	
	
