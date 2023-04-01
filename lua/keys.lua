-- telescope
local builtin = require('telescope.builtin')

-- Space PV back 
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set('n', '<leader><F5>', function() vim.cmd.UndotreeToggle(); vim.cmd.UndotreeFocus();  end)

vim.keymap.set('n', '<leader>ff',function() builtin.find_files({ hidden = true }) end, {})
vim.keymap.set('n', '<C-ff>', builtin.git_files, {})
vim.keymap.set('n', '<leader>fs', function()
                builtin.grep_string({search = vim.fn.input("Grep > ")});
        end)

-- Vimspector
vim.cmd([[
nmap <F9> <cmd>call vimspector#Launch()<cr>
nmap <F5> <cmd>call vimspector#StepOver()<cr>
nmap <F8> <cmd>call vimspector#Reset()<cr>
nmap <F11> <cmd>call vimspector#StepOver()<cr>")
nmap <F12> <cmd>call vimspector#StepOut()<cr>")
nmap <F10> <cmd>call vimspector#StepInto()<cr>")
]])

