return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "ts_ls",
          "ruby_lsp",
          "html",
          -- "clangd",
          "rust_analyzer",
          "wgsl_analyzer"
        },
      })
    end,
  },

  -- Setup the communication between Neovim and lenguage servers
  {
    "neovim/nvim-lspconfig",
    config = function()
      -- local lspconfig = require('lspconfig')

      vim.lsp.enable("lua_ls")
      vim.lsp.enable("ruby_lsp")
      -- lspconfig.lua_ls.setup({})
      -- lspconfig.ts_ls.setup({})
      -- lspconfig.ruby_lsp.setup({})
      -- lspconfig.clangd.setup({
      --   cmd = { 'clangd', '--background-index', '--clang-tidy', '--log=verbose'},
      --   init_options = {
      --     fallbackFlags = { '-std=c89', '-std=c++17' },
      --   },
      -- })
      -- lspconfig.html.setup({})
      -- lspconfig.rust_analyzer.setup({})
      -- lspconfig.wgsl_analyzer.setup({})

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
