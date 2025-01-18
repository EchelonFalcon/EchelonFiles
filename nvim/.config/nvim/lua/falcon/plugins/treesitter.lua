return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    -- ts-autotag utilizes treesitter to understand the code stucture to close tsx tags
    "windwp/nvim-ts-autotag",
  },
  -- when the plugin build runs the TSUpdate command to ensure all our servers are installed and updated
  build = ":TSUpdate",
  config = function()
    -- gain access to the treesitter config functions
    local ts_config = require("nvim-treesitter.configs")

    -- call the treesitter setup with properties to config our experience
    ts_config.setup({
      -- make sure we have the following installed: vim, vimdoc, lua, java, javascript, typescript, html, css, json, tsx, markdown, markdown inline, gitignore
      ensure_installed = {
        "vim",
        "vimdoc",
        "lua",
        "java",
        "javascript",
        "typescript",
        "html",
        "css",
        "json",
        "tsx",
        "markdown",
        "markdown_inline",
        "gitignore",
        "java"
      },
      -- when using a new file type is will be added to treesitter automatically
      auto_install = true,
      -- make sure highlighting is enabled
      highlight = { enabled = true },
      -- enable tsx auto closing tag creation
      autotag = { enable = true },
    })
  end,
}
