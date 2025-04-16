return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local config = require("nvim-treesitter.configs")
      config.setup({
        ensure_installed = {
          "toml",
          "c",
          "lua",
          "javascript",
          "ruby",
          "css",
          "html",
          "embedded_template",
          "json",
          "yaml",
          "python",
          "bash",
          "zsh",
          "rust",
          "wgsl",
        },
        auto_install = true,
        highlight = { enable = true },
        --indent = { enable = true },
      })
    end,
  },
}
