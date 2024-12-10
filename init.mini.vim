" Устанавливает кодировку по умолчанию для редактора в UTF-8.
set encoding=UTF-8
" Включает отображение номеров строк в редакторе.
set number
" Отключает создание файлов бэкапа (swapfiles) при редактировании файлов.
set noswapfile
" Включает относительные номера строк, что упрощает навигацию внутри файла.
"set relativenumber
" Устанавливает буфер обмена между Vim и системным буфером обмена.
set clipboard=unnamedplus
" Добавляет возможность копировать и вставлять текст между Vim и другими приложениями.
set clipboard+=unnamedplus
" Устанавливает метод свертывания кода по отступам.
set foldmethod=indent
" Ограничивает глубину свертывания до 10 уровней.
set foldnestmax=10
" Отключает автоматическое свертывание блоков кода.
set nofoldenable
" Устанавливает начальный уровень свертывания для файлов.
set foldlevel=2
" Устанавливает цветовую схему для темного фона.
set background=dark
" Устанавливает вертикальную линию, отображающую ограничение длины строки (например, 79 символов).
set colorcolumn=79
" Включает поддержку мыши в Vim.
set mouse=a
" Включает автоматическую загрузку файловых типов и плагинов, а также автоматическое определение отступов.
filetype plugin indent on
" Устанавливает количество пробелов в табуляции.
set tabstop=4
" Устанавливает количество пробелов для автоматического отступа.
set shiftwidth=4
" Включает использование пробелов вместо табуляции.
set expandtab
" Включает отображение невидимых символов, таких как пробелы и табуляции.
set list
" Определяет символы для отображения невидимых символов.
set listchars=trail:·,precedes:«,extends:»,eol:↲,tab:▸\ 
" Запрашивает подтверждение при выполнении некоторых команд, которые могут быть опасными.
set confirm
" Включает подсветку синтаксиса.
syntax on

if (has('termguicolors'))
	set termguicolors
endif


call plug#begin('~/.config/nvim')
Plug 'dracula/vim', { 'as': 'dracula' }
" Плагин для vim-airline, который предоставляет настраиваемую строку статуса с множеством возможностей.
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Нужен для интеграции git vim
Plug 'tpope/vim-fugitive'
" Плагин NERDTree, предлагающий мощный файловый менеджер внутри Vim.
Plug 'preservim/NERDTree'
" Плагин vim-commentary, позволяющий легко комментировать и раскомментировать строки кода.
Plug 'tpope/vim-commentary'
" Плагин vim-devicons, добавляющий иконки к файлам и директориям в NERDTree и других плагинах.
Plug 'ryanoasis/vim-devicons'
" Плагин vim-gitgutter, который отображает изменения в файлах, сделанные в Git, в редакторе.
Plug 'airblade/vim-gitgutter'
" Плагин vim-indent-guides, который добавляет визуальные индикаторы отступов в редакторе.
Plug 'preservim/vim-indent-guides'
" Плагин plenary.nvim, обеспечивающий набор утилит и модулей для разработки плагинов для Neovim.
" Нужен для работы telescope
Plug 'nvim-lua/plenary.nvim'
" Плагин telescope.nvim, мощный инструмент для поиска файлов, буферов, команд и т.д. в Neovim.
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.5' }
" Плагин delimitmate, автоматически закрывает парные скобки, кавычки и другие символы.
Plug 'raimondi/delimitmate'
" Tree-sitter позволяет редактору понимать синтаксис кода на более глубоком уровне, что улучшает автодополнение, форматирование и другие функции.
" Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Отображение tab бара сверху
Plug 'akinsho/bufferline.nvim', { 'tag': '*' }
call plug#end()

color dracula

let g:airline_powerline_fonts = 1
let g:airline_theme='onedark'

let NERDTreeShowHidden=1
let g:indent_guides_enable_on_vim_startup = 1
let g:NERDTreeGitStatusIndicatorMapCustom = {'Modified'  :'*', 'Staged'    :'✚',
\ 'Untracked' :'✭', 'Renamed'   :'➜', 'Unmerged'  :'═', 'Deleted'   :'✖',
\ 'Dirty'     :'✗', 'Ignored'   :'☒', 'Clean'     :'✔︎', 'Unknown'   :'?', }

nmap <C-e> :NERDTreeToggle<CR>
nnoremap ,r <cmd>:NERDTreeFind<cr>
noremap <C-_> :Commentary<CR>
nnoremap ,<space> :nohlsearch<CR>
map bn :bnext<cr>
map bp :bprevious<cr>
nnoremap bd :bn<cr>:bd #<cr>

" Telescope bindings
"
nnoremap <C-g> <cmd>Telescope live_grep<cr>
nnoremap <C-f> <cmd>Telescope find_files<cr>
nnoremap <C-h> <cmd>Telescope buffers<cr>

augroup remember_folds

autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

