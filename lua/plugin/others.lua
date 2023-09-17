-- undotree
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

-- lualine
require('lualine').setup({
  options = {
    theme = "auto",
    globalstatus = true,
    disabled_filetypes = { statusline = { "dashboard", "alpha" } },
  },
  extensions = { "neo-tree", "lazy" },
})

-- trouble
local trouble = require('trouble')

vim.keymap.set('n', '<leader>q', function() trouble.open('document_diagnostics') end)
vim.keymap.set('n', '<leader>xw', function() trouble.open('workspace_diagnostics') end)

-- null ls
local null_ls = require('null-ls')

null_ls.setup({
  sources = {
    null_ls.builtins.formatting.prettierd,
    null_ls.builtins.diagnostics.eslint_d,
  },
})

-- harpoon
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>b", mark.add_file)
vim.keymap.set("n", "<S-e>", ui.toggle_quick_menu)