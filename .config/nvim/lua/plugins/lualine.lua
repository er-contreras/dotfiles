return {
  "nvim-lualine/lualine.nvim",
	config = function()
  require("lualine").setup({
			options = {
        -- theme = 'retrobox',
        section_separators = { left = "", right = "" },
			},
		})
	end,
}
