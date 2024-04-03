return {
  "akinsho/nvim-toggleterm.lua",
  config = function()
    require("toggleterm").setup {
      size = 20,
      open_mapping = [[<c-\>]],
      hide_numbers = true,
      shade_filetypes = {},
      shade_terminals = true,
      shading_factor = 1,
      start_in_insert = true,
      persist_size = true,
      direction = "float",
      close_on_exit = true,
      shell = vim.o.shell,
      float_opts = {
        border = "curved",
        width = 200,
        height = 50,
        winblend = 3,
        highlights = {
          border = "Normal",
          background = "Normal",
        },
      },
    }
  end,
}
