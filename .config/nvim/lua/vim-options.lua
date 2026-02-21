vim.opt.clipboard:append("unnamedplus")
vim.cmd("syntax off")
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.g.mapleader = " "
vim.cmd("inoremap kj <ESC>")
vim.cmd("nnoremap ; <C-w>")
vim.diagnostic.config({ virtual_text = true })
vim.cmd("set encoding=UTF-8")

-- Revert to classic Vim color palette
vim.cmd("colorscheme vim")
vim.o.background = "light"
vim.opt.termguicolors = false

-- Customize specific colors
local hl = vim.api.nvim_set_hl

hl(0, "Identifier", { ctermfg = 7 })
hl(0, "Operator", { ctermfg = 7 })
hl(0, "Delimiter", { ctermfg = 7 })
hl(0, "Special", { ctermfg = 2 })
hl(0, "LineNr", { ctermfg = 8 })
hl(0, "Character", { ctermfg = 5 })
hl(0, "SpecialChar", { ctermfg = 5 })
hl(0, "MatchParen", { ctermbg = 8 })
hl(0, "Pmenu", { ctermbg = 0, ctermfg = 7 })

-- Transparency Settings
hl(0, "SignColumn", { bg = "none" })
