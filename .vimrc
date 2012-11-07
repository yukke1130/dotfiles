syntax on
filetype on
filetype indent on
filetype plugin on
set termencoding=UTF-8
set encoding=japan
set fileencodings=iso-2022-jp,utf-8,cp932,euc-jp
set fenc=UTF-8
set enc=UTF-8
" タブ設定
set tabstop=2
set shiftwidth=2
set softtabstop=0
" タブを空白に
set expandtab

" インデント設定
set cindent 
set autoindent
set nocompatible

" 対応する()を一定時間ハイライト
set showmatch
" 検索で大文字小文字を意識しない
set ignorecase 
" 大文字を混ぜた場合だけ意識する
set smartcase
" 検索文字のハイライト
set hlsearch
" インクリメンタルサーチ
set incsearch
" 検索でファイルの最後まで行ったら繰り返さない
set nowrapscan
" TABでのコマンド補完時に候補ウィンドウを表示
set wildmenu
" バックアップ用ファイルの場所
set backupdir=~/.backup/
let &directory = &backupdir 
" ステータスライン
set laststatus=2 "常に表示
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P
" 編集中の内容を保ったまま画面切り替え
set hid

" カラーの設定
":colorscheme Light
":colorscheme LightGrey
:colorscheme blackbeauty
":colorscheme osx_like

" key map
" マーク位置へのジャンプを行だけでなく桁位置も復元できるようにする
map ' `
" Ctrl+Lで次のバッファを表示
map <C-L>   :bnext<CR>
" Ctrl+Hで前のバッファを表示
map <C-H>   :bprevious<CR>
" 挿入モードでCtrl+kを押すとクリップボードの内容を貼り付けられるようにする
imap <C-K>  <ESC>"*pa
" Ctrl+Shift+Jで上に表示しているウィンドウをスクロールさせる
nnoremap <C-S-J> <C-W>k<C-E><C-W><C-W>

" コマンドラインでのキーバインドを Emacs スタイルにする
" Ctrl+Aで行頭へ移動
:cnoremap <C-A>     <Home>
" Ctrl+Bで一文字戻る
:cnoremap <C-B>     <Left>
" Ctrl+Dでカーソルの下の文字を削除
:cnoremap <C-D>     <Del>
" Ctrl+Eで行末へ移動
:cnoremap <C-E>     <End>
" Ctrl+Fで一文字進む
:cnoremap <C-F>     <Right>
" Ctrl+Nでコマンドライン履歴を一つ進む
:cnoremap <C-N>     <Down>
" Ctrl+Pでコマンドライン履歴を一つ戻る
:cnoremap <C-P>     <Up>
" Alt+Ctrl+Bで前の単語へ移動
:cnoremap <Esc><C-B>    <S-Left>
" Alt+Ctrl+Fで次の単語へ移動
:cnoremap <Esc><C-F>    <S-Right> 


" Gtags関連
map <C-n> :cn<CR>
map <C-p> :cp<CR>
map  :GtagsCursor<CR>
map  :Gtags -r <CR>

" HTML erb php tpl 編集時はタブ幅を4に設定
autocmd FileType html,erb,thtml,php,tpl set tabstop=4 shiftwidth=4

" thtml erb 形式を html 形式でシンタックスハイライトさせる
autocmd BufNewFile,BufRead *.thtml,*.erb,*ctp set filetype=html
