local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	return
end

configs.setup({
	ensure_installed = {"rust", "C", "Cpp", "Java", "python", "lua"}, -- one of "all" or a list of languages
	ignore_install = { "" }, -- List of parsers to ignore installing
	highlight = {
		enable = true, -- false will disable the whole extension
		disable = { "css" }, -- list of language that will be disabled
	},
	autopairs = {
		enable = true,
	},
	indent = { enable = true, disable = { "python", "css", "yaml" } },
  rainbow = {
    enable = true,
    extended_mode = true,   -- Also highlight non-bracjet delimiters like html tagsm boolean or table
    max_file_lines = nil,
  }
})
