require'nvim-treesitter.configs'.setup {
    -- A list of parser names, or 'all'
    ensure_installed = {'python', 'lua', 'matlab'},

    sync_install = false,
    auto_install = false,
    highligt = {
        enable = true,
    },
}
