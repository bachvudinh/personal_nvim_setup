local lint = require "lint"

-- Existing linters configuration
lint.linters_by_ft = {
  go = { "golangcilint" },
  markdown = { "markdownlint" },
  python = { "pylint" },
  ruby = { "rubocop" },
  terraform = { "tflint" },
}

-- Add pylint virtualenv configuration
lint.linters.pylint = {
    cmd = 'python',
    args = {
        '-m',
        'pylint',
        '-f',
        'json'
    },
}

-- Your existing autocmd setup
local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })
vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave", "TextChanged" }, {
  group = lint_augroup,
  callback = function()
    lint.try_lint()
  end,
})