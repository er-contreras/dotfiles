vim.opt.clipboard:append("unnamedplus")
-- vim.cmd("syntax on")
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.g.mapleader = " "
vim.cmd("inoremap kj <ESC>")
vim.cmd("nnoremap ; <C-w>")
vim.diagnostic.config({ virtual_text = true })
-- vim.cmd("inoremap <c-b> <Esc>:Lex<cr>:vertical resize 30<cr>")
-- vim.cmd("nnoremap <c-b> <Esc>:Lex<cr>:vertical resize 30<cr>")
vim.cmd("set encoding=UTF-8")

-- Revert to classic Vim color palette
vim.cmd("colorscheme retrobox")

-- Customize specific colors
local hl = vim.api.nvim_set_hl
-- Change Function colors
hl(0, "Function", { fg = "#ebdbb2", bold = true })
-- Change Directory colors
hl(0, "Directory", { fg = "#458588", bold = true })

-- vim.o.background = "dark"
-- Disable TrueColor if you want the terminal to handle the 'dimming'
-- This often makes the colors look exactly like the first photo
-- vim.opt.termguicolors = false

-- Transparency Settings
-- local highlight_groups = {
--   "Normal",
--   "NormalNC",
--   "LineNr",
--   "SignColumn",
--   "StatusLine",
--   "StatusLineNC",
--   "EndOfBuffer",
-- }
-- 
-- for _, group in ipairs(highlight_groups) do
--   vim.api.nvim_set_hl(0, group, { bg = "none" })
-- end
