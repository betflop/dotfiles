-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<leader>xi", function()
  -- получаем текущее состояние virtual_text
  local current = vim.diagnostic.config().virtual_text
  -- переключаем на противоположное
  vim.diagnostic.config({ virtual_text = not current })
  print("Virtual text:", not current and "Включён" or "Отключён")
end, { desc = "Toggle inline LSP errors" })
