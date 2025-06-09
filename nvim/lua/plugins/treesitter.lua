return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false, -- IMPORTANT: This plugin does not support lazy-loading
  branch = 'main', -- IMPORTANT: Use the main branch for the rewrite
  build = ':TSUpdate', -- Run :TSUpdate on install/update to manage parsers

  -- Dependencies can be added here if nvim-treesitter itself has them
  -- and they are not managed by the plugin internally.
  -- For now, the docs don't specify explicit lazy.nvim dependencies.

  config = function()
    -- You only need to call setup if you want to override the default
    -- installation directory for parsers.
    -- require('nvim-treesitter').setup {
    --   install_dir = vim.fn.stdpath('data') .. '/site' -- Default value
    -- }

    -- Install the parsers you need.
    -- This function takes a list of language names.
    -- The :wait(timeout_ms) is optional but recommended for synchronous installation
    -- during startup, ensuring parsers are available immediately.
    -- The timeout is in milliseconds (e.g., 300000ms = 5 minutes).
    
    local parsers_to_install = {
      "bash",
      "c",
      "cpp",
      "go",
      "html",
      "javascript",
      "json",
      "lua",
      "luadoc",
      "markdown",
      "markdown_inline", -- for markdown code blocks
      "python",
      "query", -- for Neovim's query language itself
      "regex",
      "rust",
      "toml",
      "tsx",
      "typescript",
      "vim",
      "vimdoc",
      "yaml",
      -- Add any other languages you use
    }
    -- This is a no-op if the parsers are already installed.
    require('nvim-treesitter').install(parsers_to_install):wait(300000)
  end,
}
