vim.keymap.set("n", "<leader>dv", vim.cmd.Ex)

vim.keymap.set("x", "<leader>p", [["_dP]])

vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

vim.g.clipboard = {
  name = 'tmuxClipboard',
  copy = {
    ["+"] = {'tmux', 'load-buffer', '-'},
    ["*"] = {'tmux', 'load-buffer', '-'},
  },
  paste = {
    ["+"] = {'tmux', 'save-buffer', '-'},
    ["*"] = {'tmux', 'save-buffer', '-'},
  },
  cache_enabled = true,
}

vim.opt.clipboard = 'unnamedplus'
