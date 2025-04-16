return {
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local builtin = require("telescope.builtin")
      vim.keymap.set('n', '<C-p>', builtin.find_files, {})
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
    end
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup({
        defaults = {

          file_ignore_patterns = {
            "node_modules/.*",
            ".git/.*",
            "vendor/.*",
            "tmp/.*",
            ".target/.*",
            "./.ruby-lsp/*",
          },
        },
        pickers = {
          find_files = ({
            layout_strategy='vertical',
            layout_config = {
              vertical = {
                height = 0.95,
                width = 0.95
              }
            },
            hidden = true,
            previewer = false,
            theme = "dropdown"
          }),
        },
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({}),
          },
        },
      })
    end,
  },
}
