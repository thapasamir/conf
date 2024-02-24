-- Import the Telescope built-in module
local builtin = require('telescope.builtin')

-- Key Mapping 1: Find Files
-- <leader>pf in normal mode triggers the find_files function from Telescope.
-- This opens a fuzzy finder for locating and opening files in the current directory.
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})

-- Key Mapping 2: Find Git Files
-- <C-p> in normal mode triggers the git_files function from Telescope.
-- This opens a fuzzy finder for locating and opening files in the current Git repository.
vim.keymap.set('n', '<C-p>', builtin.git_files, {})

-- Key Mapping 3: Grep String
-- <leader>ps in normal mode triggers a custom function.
-- This function prompts the user for a search string and then uses the grep_string function
-- from Telescope to search for that string in the current project.
vim.keymap.set('n', '<leader>ps', function()

    builtin.grep_string({ search = vim.fn.input("Grep > ")});
end)
