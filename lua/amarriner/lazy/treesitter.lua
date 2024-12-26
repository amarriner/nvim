return {
	{
		"nvim-treesitter/nvim-treesitter",
		run = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
	},
	{ "windwp/nvim-autopairs" },
	{ "windwp/nvim-ts-autotag" },
}
