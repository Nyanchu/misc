"環境設定
set encoding=utf-8

"表示設定
set number "行番号を表示する
set title "編集中のファイル名を表示
set showmatch "括弧入力時の対応する括弧を表示
syntax on "コードの色分け
set tabstop=4 "インデントをスペース4つ分に設定
set expandtab "Tabキー押下時やインデント時に半角スペースを使う
set shiftwidth=4 "Shiftキー押下時のインデント幅
set smartindent "オートインデント
set whichwrap=b,s,h,l,<,>,[,],~ "行頭・行末のカーソル移動
set scrolloff=10 "ウィンドウの上端・下端に移動した際の余白行
set laststatus=2 "ステータスラインを常時表示させる
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P "ステータスバーに改行コード、文字コードを表示

"ファイル設定
set fileformat=unix "改行コードはLF
set fileencoding=utf-8 "文字コードはUTF-8

"色設定
hi Comment ctermfg=2 "緑色

