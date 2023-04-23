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
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    ["<leader>td"] = { "<cmd>TodoTelescope<cr>", desc = "Show Todos in project" },
    ["<leader>FRUN"] = { "<cmd>FlutterRun<cr>", desc = "Run current flutter project" },
    ["<leader>FR"] = { "<cmd>FlutterReload<cr>", desc = "Flutter hot reload" },
    ["<leader>Fr"] = { "<cmd>FlutterRestart<cr>", desc = "Flutter Restart" },
    ["<leader>FD"] = { "<cmd>FlutterDevices<cr>", desc = "Get devices for Flutter" },
    ["<leader>FSIM"] = { "<cmd>FlutterEmulators<cr>", desc = "Get sim/em devices for Flutter" },
    ["<leader>Flr"] = { "<cmd>FlutterRename<cr>", desc = "Flutter rename and update imports" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  i = {
    ["<F1>"] = { 'copilot#Accept("<CR>")', silent = true, expr = true },
    ["<F2>"] = { 'copilot#Next()', silent = true, expr = true },
    ["<F3>"] = { 'copilot#Previous()', silent = true, expr = true },
  }
}
