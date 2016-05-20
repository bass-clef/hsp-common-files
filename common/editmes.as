
// Edit Control Message
// 調べる際はフルスクリーン推奨

#define global EM_GETSEL               0x00B0	// 現在選択されているインデックスを取得
#define global EM_SETSEL               0x00B1	// 文字列を選択
#define global EM_GETRECT              0x00B2	// 長方形の座標を取得する
#define global EM_SETRECT              0x00B3	// 長方形の座標を設定し再描画
#define global EM_SETRECTNP            0x00B4	// 長方形の座標を設定だけ
#define global EM_SCROLL               0x00B5	// 垂直スクロール
#define global EM_LINESCROLL           0x00B6	// 垂直・水平スクロール
#define global EM_SCROLLCARET          0x00B7	// キャレットの見える位置までスクロール
#define global EM_GETMODIFY            0x00B8	// 変更フラグの取得
#define global EM_SETMODIFY            0x00B9	// 変更フラグの設定
#define global EM_GETLINECOUNT         0x00BA	// 行数の取得
#define global EM_LINEINDEX            0x00BB	// 行の文字インデックス取得
#define global EM_SETHANDLE            0x00BC	// 表示テキストのためのメモリハンドル設定
#define global EM_GETHANDLE            0x00BD	// 表示テキストのためのメモリハンドル取得
#define global EM_GETTHUMB             0x00BE	// スクロール位置取得
#define global EM_LINELENGTH           0x00C1	// 行の長さ取得
#define global EM_REPLACESEL           0x00C2	// 選択文字列を置換
#define global EM_GETLINE              0x00C4	// 指定行のテキスト取得
#define global EM_LIMITTEXT            0x00C5	// 最大テキスト量の設定
#define global EM_CANUNDO              0x00C6	// 「元に戻す」の可能性を取得
#define global EM_UNDO                 0x00C7	// 「元に戻す」の実行
#define global EM_FMTLINES             0x00C8	// ソフト改行のオン・オフ
#define global EM_LINEFROMCHAR         0x00C9	// 指定文字インデックスから行インデックス取得 wp&-1:キャレット位置
#define global EM_SETTABSTOPS          0x00CB	// タブストップの設定
#define global EM_SETPASSWORDCHAR      0x00CC	// パスワード文字の設定・解除
#define global EM_EMPTYUNDOBUFFER      0x00CD	// 「元に戻す」のフラグリセット
#define global EM_GETFIRSTVISIBLELINE  0x00CE	// 最も上に表示されている行を取得
#define global EM_SETREADONLY          0x00CF	// 読み取り専用スタイルの設定と解除
#define global EM_SETWORDBREAKPROC     0x00D0	// ワードトラップ関数の設定
#define global EM_GETWORDBREAKPROC     0x00D1	// ワードトラップ関数の取得
#define global EM_GETPASSWORDCHAR      0x00D2	// パスワード文字の取得
#define global EM_SETMARGINS           0x00D3	// 左右のマージン設定
#define global EM_GETMARGINS           0x00D4	// 左右のマージン取得
#define global EM_SETLIMITTEXT         EM_LIMITTEXT   /* ;win40 Name change */
#define global EM_GETLIMITTEXT         0x00D5	// 最大テキスト量の取得
#define global EM_POSFROMCHAR          0x00D6	// 指定文字の位置の取得
#define global EM_CHARFROMPOS          0x00D7	//指定座標の文字インデックスと行インデックスの取得
#define global EM_SETIMESTATUS         0x00D8
#define global EM_GETIMESTATUS         0x00D9
