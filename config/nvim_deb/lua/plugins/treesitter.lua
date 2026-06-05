return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate', -- Automatically runs :TSUpdate after installation
  config = function()
    require('nvim-treesitter.configs').setup {
      -- Enable highlighting
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      -- Enable indentation (optional, considered experimental)
      indent = { enable = false },
      -- List of languages to install automatically
      ensure_installed = { 'c', 'lua', 'vim', 'javascript', 'python' },
      -- Ignore specific parsers
      ignore_install = { 'javascript' }, -- Example of ignoring JS parser
    }
  end,
}
