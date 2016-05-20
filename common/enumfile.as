	
	#ifdef con
	#undef con
	#endif
	
	#module
	#uselib "Advapi32.dll"
	#cfunc	GetFileSecurity				"GetFileSecurityA"				sptr, int, int, int, int
	#define OWNER_SECURITY_INFORMATION       (0x00000001)
	// ファイルのセキュリティ情報取得
	#defcfunc IsFileAccess str target
		sdim psd, 1000;
		sdsize = 0
	return GetFileSecurity(target, OWNER_SECURITY_INFORMATION, varptr(psd), 1000, varptr(sdsize))
	#global
	
	#module
	#defcfunc con int cond, int prm1, int prm2
		if cond :return prm1
	return prm2
	#defcfunc stringin var string, str word
		notesel@hsp string
		if notemax == 1 :if string == word {return 1 }else {return 0 }
		i = 0
		repeat notemax
			if noteget(cnt) == word :i = 1 :break
		loop
	return 1
	// EnumFile 開始ディレクトリ, 出力される変数, 拡張子, 展開するフォルダーの数
	#deffunc EnumFile str dir, var buf, str extention, int foldermax
		sdim buf :sdim list :sdim list2 :sdim file :sdim ext
		file = dir
		ext = extention
		split ext, ";", exts
		extsmax = length(exts)
		fcnt = foldermax
		
		repeat
			await
			if cnt != 0 {
				notesel@hsp list
				if notemax == 0 :break
				noteget@hsp file, 0
				notedel 0
			}
			if isdir(file) {
				if fcnt :if IsFileAccess(file) {
					chdir file
					dirlist list2, "*.*", 2
					notesel@hsp list2
					repeat notemax
						list += ""+file+"\\"+noteget(cnt)+"\n"
					loop
					fcnt--
				}
			}else {
				if ext != "*.*" {
					j = 0
					fext = "*"+getpath(file, 26)
					repeat extsmax
						if fext == exts.cnt :j = 1 :break
					loop
				}else :j = 1
				if j {
					dir_ = getpath(file, 32)
					dir_ = strtrim(dir_, 2, '\\')
					buf += ""+dir_+"\\"+getpath(file, 8)+"\n"
				}
			}
		loop
	return
	#global
