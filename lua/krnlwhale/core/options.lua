local opt = vim.opt -- for conciseness
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- line numbers
opt.relativenumber = true -- show relative line numbers
opt.cursorline = true
opt.number = true -- shows absolute line number on cursor line (when relative number is on)
opt.guicursor = ""
-- disable mouse in neovim
opt.mouse = nil

-- Explorer settings
vim.g.netrw_banner = 0


-- tabs & indentation
opt.tabstop = 4 -- 4 spaces for tabs (prettier default)
opt.shiftwidth = 4 -- 4 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

-- line wrapping
opt.wrap = false -- disable line wrapping

opt.incsearch = true
opt.scrolloff = 8
opt.signcolumn = "yes"
opt.updatetime = 50

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

-- turn on termguicolors for nightfly colorscheme to work
-- (have to use iterm2 or any other true color terminal)
opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

opt.statusline = "%!v:lua.MyStatusline()"

function MyStatusline()
	local filepath = vim.fn.fnamemodify(vim.fn.expand("%"), ":~") -- Path from home
	local filetype = vim.bo.filetype
	local line = vim.fn.line(".")
	local col = vim.fn.col(".")
	local modified = vim.bo.modified and "[+]" or "[-]"
	return string.format(
		"Type: %s | Ln %d, Col %d |                                          File: %s ",
		filetype,
		line,
		col,
		filepath
	)
end
