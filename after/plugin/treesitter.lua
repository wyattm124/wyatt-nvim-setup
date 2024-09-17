require("nvim-treesitter.configs").setup({
	ensure_installed = { "c", "cpp", "cuda", "lua", "python" },
	sync_install = false,
        highlight = { enable = true },
        indent = { enable = true },  
})

