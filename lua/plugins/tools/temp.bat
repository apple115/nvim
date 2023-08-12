return {
	"ludovicchabant/vim-gutentags",
	config = function()
		vim.g.gutentags_project_root = { ".root", ".svn", ".git", ".hg", ".project", ".project.root" }
		vim.g.gunentags_ctags_tagfile = ".tags"
		vim.g.gunentags_cache_dir = "~/.cache/tags"
	end,
}
