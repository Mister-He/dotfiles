return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  lazy = false,
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag",
  },
  config = function()
    local treesitter = require("nvim-treesitter")
    local parsers = {
      "json",
      "javascript",
      "typescript",
      "tsx",
      "yaml",
      "html",
      "css",
      "prisma",
      "markdown",
      "markdown_inline",
      "svelte",
      "graphql",
      "bash",
      "lua",
      "vim",
      "dockerfile",
      "gitignore",
      "query",
      "vimdoc",
      "c",
      "cpp",
      "r",
      "python",
      "zsh",
      "haskell",
      "gdscript",
      "gdshader",
      "godot_resource",
    }

    treesitter.setup()
    treesitter.install(parsers)

    vim.treesitter.language.register("haskell", "lhaskell")

    local filetypes = {
      "json",
      "javascript",
      "typescript",
      "typescriptreact",
      "yaml",
      "html",
      "css",
      "prisma",
      "svelte",
      "graphql",
      "sh",
      "lua",
      "vim",
      "dockerfile",
      "gitignore",
      "query",
      "vimdoc",
      "c",
      "cpp",
      "r",
      "python",
      "sh",
      "haskell",
      "lhaskell",
      "gdscript",
      "gdshader",
      "gdresource",
    }

    if vim.fn.has("nvim-0.12") == 0 then
      table.insert(filetypes, "markdown")
    end

    vim.api.nvim_create_autocmd("FileType", {
      pattern = filetypes,
      callback = function(args)
        vim.treesitter.start(args.buf)
      end,
    })

    require("nvim-ts-autotag").setup()
  end,
}
