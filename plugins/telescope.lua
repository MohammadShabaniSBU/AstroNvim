return {
  "nvim-telescope/telescope.nvim",
  config = function(plugin, opts)
    require('plugins.configs.telescope')(plugin, opts)

    local telescope = require('telescope')
    telescope.setup({
      extensions = {
        file_browser = {
          theme = "ivy",
          -- disables netrw and use telescope-file-browser in its place
          hijack_netrw = true,
          mappings = {
            ["i"] = {
              -- your custom insert mode mappings
            },
            ["n"] = {
              -- your custom normal mode mappings
            },
          },
        },
      },
    })

    telescope.load_extension('file_browser')
  end
}
