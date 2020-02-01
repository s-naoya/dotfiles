" main vimrc
" 2017/11/10 create by Saito Naoya

"""""""""""""""""""""""""""""""
" dein setup
"""""""""""""""""""""""""""""""
if !&compatible
  set nocompatible
endif

" reset augroup
augroup MyAutoCmd
  autocmd!
augroup END

" dein settings {{{
" dein自体の自動インストール
let s:cache_home = empty($XDG_CACHE_HOME) ? expand('~/.cache') : $XDG_CACHE_HOME
let s:dein_dir = s:cache_home . '/dein'
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
if !isdirectory(s:dein_repo_dir)
  call system('git clone https://github.com/Shougo/dein.vim ' . shellescape(s:dein_repo_dir))
endif
let &runtimepath = s:dein_repo_dir .",". &runtimepath
" プラグイン読み込み＆キャッシュ作成
let s:toml_file = fnamemodify(expand('<sfile>'), ':h').'/dein.toml'
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir, [$MYVIMRC, s:toml_file])
  call dein#load_toml(s:toml_file)
  call dein#end()
  call dein#save_state()
endif
" 不足プラグインの自動インストール
if has('vim_starting') && dein#check_install()
  call dein#install()
endif
" }}}
""""""""""""""""""""""""""""""""""
" finish dein setup
""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""
" molokai
""""""""""""""""""""""""""""""""""
filetype on
syntax on
colorscheme molokai
set t_Co=256
""""""""""""""""""""""""""""""""""
" finish molokai
""""""""""""""""""""""""""""""""""



"""""""""""""""""""""""""""""""""""
"" deoplete.nvim
"""""""""""""""""""""""""""""""""""
let g:deoplete#enable_at_startup = 1
let g:deoplete#auto_complete_delay = 0
inoremap <silent><expr> <TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
"""""""""""""""""""""""""""""""""""
"" finish deoplete.nvim
"""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""
" lightline.vim
""""""""""""""""""""""""""""""""""
let g:lightline = {'colorsheme': 'wombat'}
""""""""""""""""""""""""""""""""""
" finish lightline.vim
""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""
" vim-clang-format
""""""""""""""""""""""""""""""""""
map <silent><Leader>x <Plug>(operator-evalruby)
let g:clang_format#command = "clang-format-3.4"
let g:clang_format#code_style = "Google"
let g:clang_format#style_options = {
\ "IndentWidth": 2,
\ "AllowShortBlocksOnASingleLine": "true"
\}
""""""""""""""""""""""""""""""""""
" finish vim-clang-format
""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""
" vim-ansible-yaml
""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""
" finish vim-ansible-yaml
""""""""""""""""""""""""""""""""""
set encoding=utf-8 "文字コードをUTF-8に設定
scriptencoding utf-8


set fileencoding=utf-8
set fileencodings=ucs-boms,utf-8,euc-jp,cp932 "読み込み時の文字コードの自動判別. 左側優先
set fileformats=unix,dos,mac "文字コードの自動判別. 左側優先
set ambiwidth=double "□や○表示が崩れる問題を解決

set expandtab "タブ入力を複数の空白入力に置き換える
set tabstop=4 "画面上でタブ文字が占める幅
set softtabstop=4 "連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
set autoindent "オートインデント
set smartindent "改行前に前の行の公文をチェックし次の行のインデントを増減
set shiftwidth=4 "smartindentで増減する幅

set incsearch "インクリメンタルサーチ 1文字入力ごとに検索
set ignorecase "検索パターンに大文字小文字を区別しない
set smartcase "検索パターンに大文字を含んでいたら大文字小文字を区別する
set hlsearch "検索結果をハイライト
"ESC2度押しでハイライト切り替え
nnoremap <silent><Esc><Esc> :<C-u>set nohlsearch!<CR>


set whichwrap=b,s,h,l,<,>,[,],~ "カーソルの左右移動で行末から次の行の行頭へ移動
set number "行番号
set cursorline

" 行が折り返し表示されていた場合、表示行単位でカーソルを移動
nnoremap j gj
nnoremap k gk
nnoremap <down> gj
nnoremap <up> gk

set backspace=indent,eol,start " バックスペースキー有効化
set showmatch "カッコの対応関係を一瞬表示
source $VIMRUNTIME/macros/matchit.vim "[%]を拡張


set wildmenu "コマンドモード補完
set history=2000 "保存コマンド履歴数


" ペースト時無駄自動インデント防止
if &term =~ "xterm"
    let &t_ti .= "\e[?2004h"
    let &t_te .= "\e[?2004l"
    let &pastetoggle = "\e[201~"

    function XTermPasteBegin(ret)
        set paste
        return a:ret
    endfunction

    noremap <special> <expr> <Esc>[200~ XTermPasetBegin("0i")
    inoremap <special> <expr> <Esc>[200~ XTermPasteBegin("")
    cnoremap <special> <Esc>[200~ <nop>
    cnoremap <special> <Esc>[201~ <nop>
endif

set whichwrap=h,l

set list "不可視文字を表示
set listchars=tab:>-,trail:-,nbsp:%,extends:>,precedes:<,eol:<
set hidden
set helplang=en

"ステータスライン
set laststatus=2

" 全角スペースの表示
function! ZenkakuSpace()
    highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
endfunction
if has('syntax')
    augroup ZenkakuSpace
        autocmd!
        autocmd ColorScheme * call ZenkakuSpace()
        autocmd VimEnter,WinEnter,BufRead * let w:m1=matchadd('ZenkakuSpace', '　')
    augroup END
    call ZenkakuSpace()
endif

" NERDTree自動起動
nnoremap <silent><C-e> :NERDTreeToggle<CR>
nnoremap <silent><S-e> :NERDTree<CR>
nnoremap s <Nop>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h

