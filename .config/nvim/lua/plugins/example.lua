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
    opts = {
      dashboard = { enabled = false },
      picker = {
        hidden = true,
        sources = {
          files = {
            hidden = true, -- Show hidden/dotfiles
          },
        },
      },
    },
  },

  {
    "Pocco81/auto-save.nvim",
    opts = {
      execution_message = {
        message = function()
          return ""
        end,
      },
    },
  },

  {
    "neovim/nvim-lspconfig",
    opts= {autoformat = false},
  },

  {
    "Jorenar/nvim-dap-disasm",
    dependencies = {
      "rcarriga/nvim-dap-ui",
      "mfussenegger/nvim-dap",
    },

    opts = {
       -- Add disassembly view to elements of nvim-dap-ui
     dapui_register = true,

     -- Add disassembly view to nvim-dap-view
     dapview_register = true,

     -- If registered, pass section configuration to nvim-dap-view
     dapview = {
       keymap = "D",
       label = "Disassembly [D]",
       short_label = "󰒓 [D]",
     },

     -- Show winbar with buttons to step into the code with instruction granularity
     -- This settings is overriden (disabled) if the dapview integration is enabled and the plugin is installed
     winbar = {
       enabled = false,
       labels = {
         step_into = "Step Into",
         step_over = "Step Over",
         step_back = "Step Back",
       },
       order = {
         "step_into", "step_over", "step_back"
       }
     },

     -- The sign to use for instruction the exectution is stopped at
     sign = "DapStopped",

     -- Number of instructions to show before the memory reference
     ins_before_memref = 16,

     -- Number of instructions to show after the memory reference
     ins_after_memref = 16,

     -- Columns to display in the disassembly view
     columns = {
       "address",
       "instructionBytes",
       "instruction",
     },
    },
  },

  {
      "rcarriga/nvim-dap-ui",
      opts = {
        layouts = {
      {
          elements = {
            { id = "scopes", size = 0.4 },
            { id = "stacks", size = 0.4 },
            { id = "breakpoints", size = 0.2 },
          },
          position = "left",
          size = 30,
        },
        {
          elements = {
            { id = "repl", size = 0.5 },
            { id = "console", size = 0.5 },
          },
          position = "bottom",
          size = 10,
        },
      },
    },
  },

  {
    "direnv/direnv.vim",
  },
}
