vim.keymap.set("n", "<space>fb", ":Telescope file_browser<CR>")

return {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
}
