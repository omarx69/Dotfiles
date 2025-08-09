return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    -- Load Catppuccin's Bufferline highlights
    require("catppuccin").setup({
      integrations = {
        bufferline = true,
      },
      transparent_background = true,
    })

    require("bufferline").setup({
      options = {
        separator_style = "thin", -- You can use "thin" | "thick" | "slant"
        show_buffer_close_icons = false,
        show_close_icon = false,
        diagnostics = "nvim_lsp",
        offsets = {
          {
            filetype = "NvimTree",
            text = "File Explorer",
            highlight = "Directory",
            separator = true
          }
        }
      },
      highlights = require("catppuccin.groups.integrations.bufferline").get()
    })
  end
}

