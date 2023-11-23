local M = {}

M.copilot = {
  suggestion = {
    enabled = true,
    auto_trigger = true,
    keymap = {
      accept = "<Tab>",
      close = "<Esc>",
      next = "<C-,>",
      prev = "<C-m>",
      select = "<CR>",
      dismiss = "<C-X>",
    },
  },
  panel = {
    enabled = false,
  },
}

-- Horizontal terminal height at 50%
M.nvterm = {
  terminals = {
    type_opts = {
      horizontal = {
        split_ratio = 0.5,
      },
    },
  },
}

-- NvimTree git support
M.nvimtree = {

  filters = {
    dotfiles = true,
  },

  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    indent_markers = {
      enable = true,
    },
    icons = {
      show = {
        git = true,
      },
    },
  },
}

-- inline git blame
M.gitsigns = {
  current_line_blame = true,
}

M.glow = {
  height_ratio = 1,
}
-- syntax highlight
M.treesitter = {
  ensure_installed = {
    "bash",
    "cpp",
    "css",
    "csv",
    "diff",
    "dockerfile",
    "go",
    "gosum",
    "gomod",
    "git_config",
    "gitignore",
    "graphql",
    "hcl",
    "html",
    "javascript",
    "json",
    "lua",
    "make",
    "markdown",
    "python",
    "ruby",
    "scss",
    "sql",
    "terraform",
    "toml",
    "tsx",
    "yaml",
  },
}

-- LSPs, Linters, Debuggers and Formatters
M.mason = {
  ensure_installed = {
    "bash-language-server",
    "beautysh",
    "black",
    "clangd",
    "clang-format",
    "debugpy",
    "delve",
    "gopls",
    "stylua",
    "terraform-ls",
    "tflint",
    "lua-language-server",
    "markdownlint",
    "marksman",
    "prettierd",
    "pyright",
    "yamlfmt",
    "yaml-language-server",
  },
}

return M
