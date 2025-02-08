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

set conceallevel=1

" Включает подсветку синтаксиса.
syntax on

if (has('termguicolors'))
	set termguicolors
endif

call plug#begin('~/.config/nvim')
" Plug 'folke/noice.nvim'
" Plug 'MunifTanjim/nui.nvim'
" Plug 'rcarriga/nvim-notify'

Plug 'epwalsh/obsidian.nvim'
" Плагин для темы Dracula, предлагает улучшенный цветовой схеме для Neovim, написанный на Lua.
Plug 'Mofiqul/dracula.nvim'
" Плагин для vim-airline, который предоставляет настраиваемую строку статуса с множеством возможностей.
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
Plug 'nvim-lualine/lualine.nvim'
" If you want to have icons in your statusline choose one of these
Plug 'nvim-tree/nvim-web-devicons'
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
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }

" ----------------------------------------------------------------------------
" ----------------------------------------------------------------------------
" ----------------------------------------------------------------------------
" nvim-lspconfig: Предоставляет конфигурацию для Language Server Protocol (LSP) в Neovim
Plug 'neovim/nvim-lspconfig'
" nvim-cmp: Автозаполнение для Neovim, поддерживает множество источников
Plug 'hrsh7th/nvim-cmp'
" cmp-nvim-lsp: Интеграция LSP с nvim-cmp для автозаполнения
Plug 'hrsh7th/cmp-nvim-lsp'
" Добавление плагина Prettier для автоматической форматировки кода в Vim.
Plug 'prettier/vim-prettier', {
 \ 'do': 'npm install --frozen-lockfile --production',
 \ 'for': ['javascript', 'typescript', 'typescriptreact', 'javascriptreact', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }
" Плагин для просмотра цветов CSS в Vim, позволяющий быстро увидеть, как изменяется цвет.
Plug 'https://github.com/ap/vim-css-color'
" Интеграция с отладчиками для различных языков программирования, упрощающая процесс отладки.
Plug 'puremourning/vimspector'
" Плагин для статического анализа кода, помогающий обнаруживать ошибки и предупреждения.
Plug 'mfussenegger/nvim-lint'
" Плагин с функционалом, предположительно, связанным с улучшением работы с кодом в Vim.
Plug 'Exafunction/codeium.vim', { 'branch': 'main' }
" Отображение tab бара сверху
Plug 'akinsho/bufferline.nvim', { 'tag': '*' }
call plug#end()


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
nnoremap bd :bp<cr>:bd #<cr>
" map td :tabclose<cr>
" map <Enter> o<ESC>

" Telescope bindings
"
" inoremap jk <esc>
" inoremap kj <esc>
nnoremap <C-g> <cmd>Telescope live_grep<cr>
nnoremap <C-f> <cmd>Telescope find_files<cr>
nnoremap <C-h> <cmd>Telescope buffers<cr>

augroup remember_folds

autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

lua << EOF
require('telescope').setup{
  defaults = {
    vimgrep_arguments = {
      'rg',
      '--color=never',
      '--no-heading',
      '--with-filename',
      '--line-number',
      '--column',
      '--hidden',
-- игнорирует все из .gitignore 
      '--unrestricted',
    },
   file_ignore_patterns = {
   "node_modules", "build", "dist", "yarn.lock", ".next/"
   },
}}

vim.cmd[[colorscheme dracula]]
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "python", "go", "tsx" , "lua" },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}

require('bufferline').setup {}
EOF

if &diff
    " colorscheme dracula
    colorscheme gruvbox
endif

" Minimal setup
" ----------------------------------------------------------------------------
" ----------------------------------------------------------------------------
" ----------------------------------------------------------------------------

let g:syntastic_check_on_open=1
let g:vimspector_enable_mappings = 'HUMAN'
let g:vimspector_base_dir='~/.config/nvim/vimspector'
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0
let g:prettier#quickfix_enabled = 0
let g:user_emmet_leader_key='<tab>'

nmap <S-F11> <Plug>VimspectorStepOut

lua << EOF

vim.cmd [[autocmd BufRead,BufNewFile Docker* set filetype=dockerfile]]

-- Отменяет автоматический выбор автодополнения
vim.o.completeopt = 'menuone,noselect'

-- local async = require "plenary.async"

-- Настройка модуля автодополнения cmp
local cmp = require 'cmp'
cmp.setup({
completion = {
	-- autocomplete = {true}
    autocomplete = { cmp.TriggerEvent.InsertEnter, cmp.TriggerEvent.TextChanged },
	},
mapping = {
	['<C-p>'] = cmp.mapping.select_prev_item(),
	['<C-n>'] = cmp.mapping.select_next_item(),
	['<C-d>'] = cmp.mapping.scroll_docs(-4),
	['<C-f>'] = cmp.mapping.scroll_docs(4),
	['<C-space>'] = cmp.mapping.complete(),
	['<C-e>'] = cmp.mapping.close(),
	['<CR>'] = cmp.mapping.confirm {
		behavior = cmp.ConfirmBehavior.Replace,
		select = false,
		},
    ['<Tab>'] = function(fallback)
 	if vim.fn.pumvisible() == 1 then
 		vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<C-n>', true, true, true), 'n')
 	else
 		fallback()
 	end
 	end,
 	['<S-Tab>'] = function(fallback)
 	if vim.fn.pumvisible() == 1 then
 	    vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<C-p>', true, true, true), 'n')
 	else
 	    fallback()
 	end
 	end,
	},
sources = {
	{ name = 'nvim_lsp' },
	},
-- То как будет отображаться вариант автодополнения
formatting = {
	format = function(entry, vim_item)
	vim_item.kind = ({
	Text = "Text",
	Method = "Method",
	Function = "Function",
	Constructor = "Constructor",
	Field = "Field",
	Variable = "Variable",
	Class = "Class",
	Module = "Module",
	Property = "Property",
	Value = "Value",
	Enum = "Enum",
	Snippet = "Snippet",
	})[vim_item.kind]
vim_item.menu = ({
nvim_lsp = "[LSP]",
treesitter = "[TreeSitter]",
buffer = "[Buffer]",
})[entry.source.name]
return vim_item
end,
},
})

-- Setup lspconfig.
-- require('lspconfig').solargraph.setup{
--capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
-- }


local nvim_lsp = require('lspconfig')
-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)

local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

-- Mappings.
local opts = { noremap=true, silent=true }

-- See `:help vim.lsp.*` for documentation on any of the below functions
buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
buf_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
buf_set_keymap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
buf_set_keymap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
buf_set_keymap('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
buf_set_keymap('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)

end

nvim_lsp.tsserver.setup({
    init_options = {
        preferences = {
            disableSuggestions = true,
        },
    },
    on_attach = function(client, bufnr)
        client.server_capabilities.document_formatting = false
        client.server_capabilities.document_range_formatting = false
        on_attach(client, bufnr)
    end,
})

require('lint').linters_by_ft = {
  javascript = {'eslint'},
  typescript = {'eslint'}
}

-- Stylelint format after save
require'lspconfig'.stylelint_lsp.setup{
settings = {
 stylelintplus = {
   --autoFixOnSave = true,
   --autoFixOnFormat = true,
  }
}
}

require('lspconfig').ansiblels.setup{
  filetypes = {
       "yaml.ansible",
  },
  settings = {
    ansible = {
      ansible = {
        path = "ansible",
        useFullyQualifiedCollectionNames = true
      },
      ansibleLint = {
        enabled = true,
        path = "ansible-lint"
      },
      executionEnvironment = {
        enabled = false
      },
      python = {
        interpreterPath = "python3"
      },
      completion = {
          provideRedirectModules = true,
          provideModuleOptionAliases = true
      }
    },
  },
}

require'lspconfig'.terraformls.setup{}
require'lspconfig'.helm_ls.setup{}

-- bashls
require 'lspconfig'.bashls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { 'zsh', 'bash', 'sh' },
}

-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
local servers = { 'gopls' }

nvim_lsp.pyright.setup({
    settings = {
        python = {
            analysis = {
                typeCheckingMode = "off",
                diagnosticSeverityOverrides = {
                    reportOptionalMemberAccess = "none",
                },
            },
        },
    },
})

for _, lsp in ipairs(servers) do
nvim_lsp[lsp].setup {
	on_attach = on_attach,
	flags = {
		debounce_text_changes = 150,
		}
	}
end


-- ["https://json.schemastore.org/yamllint.json"] = "/*",
require('lspconfig').yamlls.setup {
  -- other configuration for setup {}
  on_attach = on_attach,
  autostart = false,
  capabilities = capabilities,
  filetypes = { "yaml" , "yaml.docker-compose" },
  settings = {
    yaml = {
      -- other settings. note this overrides the lspconfig defaults.
      schemas = {
        ["https://raw.githubusercontent.com/instrumenta/kubernetes-json-schema/master/v1.18.0-standalone-strict/all.json"] = "/*.k8s.yaml",
        kubernetes = "*.yaml",
        ["http://json.schemastore.org/github-workflow"] = ".github/workflows/*",
        ["http://json.schemastore.org/github-action"] = ".github/action.{yml,yaml}",
        ["http://json.schemastore.org/ansible-stable-2.9"] = "roles/tasks/*.{yml,yaml}",
        ["http://json.schemastore.org/prettierrc"] = ".prettierrc.{yml,yaml}",
        ["http://json.schemastore.org/kustomization"] = "kustomization.{yml,yaml}",
        ["http://json.schemastore.org/ansible-playbook"] = "*play*.{yml,yaml}",
        ["http://json.schemastore.org/chart"] = "Chart.{yml,yaml}",
        ["https://json.schemastore.org/dependabot-v2"] = ".github/dependabot.{yml,yaml}",
        ["https://json.schemastore.org/gitlab-ci"] = "*gitlab-ci*.{yml,yaml}",
        ["https://raw.githubusercontent.com/OAI/OpenAPI-Specification/main/schemas/v3.1/schema.json"] = "*api*.{yml,yaml}",
        ["https://raw.githubusercontent.com/compose-spec/compose-spec/master/schema/compose-spec.json"] = "*docker-compose*.{yml,yaml}",
        ["https://raw.githubusercontent.com/argoproj/argo-workflows/master/api/jsonschema/schema.json"] = "*flow*.{yml,yaml}",
      },
    },
  }
}

require("obsidian").setup(
{
  -- A list of workspace names, paths, and configuration overrides.
  -- If you use the Obsidian app, the 'path' of a workspace should generally be
  -- your vault root (where the `.obsidian` folder is located).
  -- When obsidian.nvim is loaded by your plugin manager, it will automatically set
  -- the workspace to the first workspace in the list whose `path` is a parent of the
  -- current markdown file being edited.
  workspaces = {
    {
      name = "personal",
      path = "/home/pk/Documents/obsidian",
    },
  },

 ui = {
    enable = true,  -- set to false to disable all additional syntax features
    update_debounce = 200,  -- update delay after a text change (in milliseconds)
    max_file_length = 5000,  -- disable UI features for files with more than this many lines
    -- Define how various check-boxes are displayed
    checkboxes = {
      -- NOTE: the 'char' value has to be a single character, and the highlight groups are defined below.
      [" "] = { char = "󰄱", hl_group = "ObsidianTodo" },
      ["x"] = { char = "", hl_group = "ObsidianDone" },
      [">"] = { char = "", hl_group = "ObsidianRightArrow" },
      ["~"] = { char = "󰰱", hl_group = "ObsidianTilde" },
      ["!"] = { char = "", hl_group = "ObsidianImportant" },
      -- Replace the above with this if you don't have a patched font:
      -- [" "] = { char = "☐", hl_group = "ObsidianTodo" },
      -- ["x"] = { char = "✔", hl_group = "ObsidianDone" },

      -- You can also add more custom ones...
    },
    -- Use bullet marks for non-checkbox lists.
    bullets = { char = "•", hl_group = "ObsidianBullet" },
    external_link_icon = { char = "", hl_group = "ObsidianExtLinkIcon" },
    -- Replace the above with this if you don't have a patched font:
    -- external_link_icon = { char = "", hl_group = "ObsidianExtLinkIcon" },
    reference_text = { hl_group = "ObsidianRefText" },
    highlight_text = { hl_group = "ObsidianHighlightText" },
    tags = { hl_group = "ObsidianTag" },
    block_ids = { hl_group = "ObsidianBlockID" },
    hl_groups = {
      -- The options are passed directly to `vim.api.nvim_set_hl()`. See `:help nvim_set_hl`.
      ObsidianTodo = { bold = true, fg = "#f78c6c" },
      ObsidianDone = { bold = true, fg = "#89ddff" },
      ObsidianRightArrow = { bold = true, fg = "#f78c6c" },
      ObsidianTilde = { bold = true, fg = "#ff5370" },
      ObsidianImportant = { bold = true, fg = "#d73128" },
      ObsidianBullet = { bold = true, fg = "#89ddff" },
      ObsidianRefText = { underline = true, fg = "#c792ea" },
      ObsidianExtLinkIcon = { fg = "#c792ea" },
      ObsidianTag = { italic = true, fg = "#89ddff" },
      ObsidianBlockID = { italic = true, fg = "#89ddff" },
      ObsidianHighlightText = { bg = "#75662e" },
    },
  },
  mappings = {
    -- Smart action depending on context, either follow link or toggle checkbox.
    ["<cr>"] = {
      action = function()
        return require("obsidian").util.smart_action()
      end,
      opts = { buffer = true, expr = true },
    }
  },
  }
)

-- require("noice").setup({})
require('lualine').setup()

EOF

