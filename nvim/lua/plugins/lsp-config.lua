return {
  {
  "mason-org/mason.nvim",
  config = function()
        require('mason').setup({})
  end
  },
  {
  "williamboman/mason-lspconfig.nvim",
  config = function()
        require('mason-lspconfig').setup({
          ensure_installed = { "pyright", "ts_ls", "html", "cssls" },
          automatic_installation = true,
        })
  end
  },
  {
    "jay-babu/mason-null-ls.nvim",
    dependencies = {
      "williamboman/mason.nvim",
      "nvimtools/none-ls.nvim",
    },
    config = function()
      require("mason-null-ls").setup({
        ensure_installed = {
          -- Lua
          "stylua",
          -- Python
          "black",
          "isort",
          -- JS / CSS / HTML
          "prettier",
          -- Vim
          "vint",
        },
        automatic_installation = true,
        handlers = {},
      })
    end,
  },
  {
  "neovim/nvim-lspconfig",
  config =function()
       local lspconfig = require("lspconfig")

-- Python
       lspconfig.pyright.setup({})

-- Lua
       lspconfig.lua_ls.setup({})

-- CSS
       lspconfig.cssls.setup({})

-- HTML
       lspconfig.html.setup({})

-- JavaScript/TypeScript
       lspconfig.ts_ls.setup({})

-- Bash
       lspconfig.bashls.setup({})
       lspconfig.omnisharp.setup({})

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})

  end
  }
}
