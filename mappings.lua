-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr)
          require("astronvim.utils.buffer").close(
            bufnr)
        end)
      end,
      desc = "Pick to close",
    },

    ["<leader>tf"] = {
      function()
        require("telescope").extensions.flutter.commands()
      end,
      desc = "Flutter Telescope Actions"
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    ["<leader>td"] = { "<cmd>TodoTelescope<cr>", desc = "Show Todos in project" },
    ["<leader>nf"] = { "<cmd>Neogen<cr>", desc = "Generate documentation for code" },
    ["<leader>mg"] = { "<cmd>Glow<cr>", desc = "Show markdown of current buffer" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  i = {
    ["<F1>"] = { 'copilot#Accept("<CR>")', silent = true, expr = true, replace_keycodes = false },
    ["<F2>"] = { 'copilot#Next()', silent = true, expr = true, replace_keycodes = false },
    ["<F3>"] = { 'copilot#Previous()', silent = true, expr = true, replace_keycodes = false },
  }
}
