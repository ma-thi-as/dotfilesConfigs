local builtint = require('telescope.builtin')
return {
	'nvim-telescope/telescope.nvim', tag = '0.1.8',
	-- or                              , branch = '0.1.x',
	dependencies = { 'nvim-lua/plenary.nvim' },
	vim.keymap.set('n', '<leader>pf', builtint.find_files, {});
	vim.keymap.set('n', '<C-p>', builtint.git_files, {});
	vim.keymap.set('n', '<leader>ps', function ()
		builtint.grep_string({ search = vim.fn.input("Grep > ") })
	end);
}
