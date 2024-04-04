return {
  "nvim-tree/nvim-tree.lua",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    local nvimtree = require("nvim-tree")

    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    nvimtree.setup({
     view = {
       width = 30,
       side = "left",
       auto_resize = true,
       relativenumber = true,
     },
     renderer = {
      indent_markers = {
        enabled = true,
      },
     },
     actions = {
      open_file = {
        window_picker = {
          enable = false,
        },
      },
     },
     filters = {
      custom = { ".DS_Store" },
     },
     git = {
      ignore = false,
     },
    })

    local keymap = vim.keymap

    keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle NvimTree" })
    keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh NvimTree" })
    keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFile<CR>", { desc = "Find file in NvimTree" })
  end,
}
