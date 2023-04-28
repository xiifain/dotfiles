return {
  "danymat/neogen",
  dependencies = "nvim-treesitter/nvim-treesitter",
  event = "User AstroFile",
  config = function()
    require('neogen').setup {}
  end
}
