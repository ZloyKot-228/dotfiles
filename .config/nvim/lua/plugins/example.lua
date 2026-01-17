-- since this is just an example spec, don't actually load anything here and return an empty spec
-- stylua: ignore

-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins

return {
  {
    "anuvyklack/windows.nvim",
    dependencies = {
          "anuvyklack/middleclass",
          "anuvyklack/animation.nvim"
       },
    config = function()
      require("windows").setup({
   autowidth = {
      enable = true,
      winwidth = 0.65,
      filetype = {
         help = 2,
      }, false
   },

   ignore = {
      buftype = { "quickfix", "snacks_picker_list" },
      filetype = { "NvimTree", "neo-tree", "undotree", "gundo", "snacks_picker_list" }
   },

   animation = {
      enable = true,
      duration = 100,
      fps = 60,
      easing = "in_out_sine"
   }
})
    end,
  },

  { "folke/snacks.nvim",
    opts = { dashboard = { enabled = false } },
  },
}
