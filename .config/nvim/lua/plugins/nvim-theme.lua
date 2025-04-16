return {
  {
    'AlexvZyl/nordic.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('nordic').load({
        transparent = {
          bg = true,
          float = true
        },
      })
    end
  }

  --{
  --  'sainnhe/everforest',
  --  lazy = false,
  --  priority = 1000,
  --  config = function()
  --    -- Optionally configure and load the colorscheme
  --    -- directly inside the plugin declaration.
  --    vim.g.everforest_enable_italic = true
  --    vim.cmd.colorscheme('everforest')
  --  end
  --}

  --{
  -- "projekt0n/github-nvim-theme",
  -- lazy = false,
  -- priority = 1000,
  -- config = function()
  --   require("github-theme").setup({
  --     options = {
  --       transparent = false,
  --     }
  --   })

  --   vim.cmd('colorscheme github_dark')
  -- end,
  --},

  -- {
  --   "mcchrish/zenbones.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     vim.o.background = "dark"
  --     vim.g.zenbones_compat = true
  --     vim.cmd('colorscheme zenbones')
  --   end
  -- }
}
