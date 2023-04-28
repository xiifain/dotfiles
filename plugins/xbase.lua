return {
  "xbase-lab/xbase",
  run = "make install",
  lazy = false,
  requires = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
    "neovim/nvim-lspconfig",
  },
  config = function()
    require("lspconfig").sourcekit.setup({
      cmd = { "sourcekit-lsp" },
      fileTypes = { "swift", "c", "cpp", "objective-c", "objective-cpp" },
      root_pattern = require("lspconfig").util.root_pattern("Package.swift", "Sources", "xcodeproj", ".git"),
    })
    require("xbase").setup({
      log_level = vim.log.levels.DEBUG,
      simctl = {
        iOS = {
          "iPhone 14 Pro",
        }
      }
    })
  end,
}
