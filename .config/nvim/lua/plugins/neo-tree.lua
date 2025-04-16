return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    vim.keymap.set("n", ";b", ":Neotree filesystem reveal left<CR>")
    vim.keymap.set("n", ";b", ":Neotree toggle<CR>")

    require("neo-tree").setup({
      window = {
        width = 90,
        mappings = {
          ["P"] = { "toggle_preview", config = { use_float = false, use_image_nvim = true } },
        },
      },
    })
  end,
}
