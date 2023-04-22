return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.dart" },
  -- Configure flutter-tools
  {
    "akinsho/flutter-tools.nvim",
    dependencies = {
      'nvim-lua/plenary.nvim',
      'stevearc/dressing.nvim',
    }
  }
}

