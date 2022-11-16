local status, git = pcall(require, "git")
if (not status) then return end

git.setup({
	keymaps = {
		-- Open blame Window
		blame = "<Leader>gb",
		-- Open file in git repository
		browser = "<Leader>go",
	}
})
