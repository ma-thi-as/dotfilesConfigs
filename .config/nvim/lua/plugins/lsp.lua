return {
  {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    -- Mason
  },
  {
    -- Luasnip && friendlysnippets
    "L3MON4D3/LuaSnip",
    version = "v2.*",
    build = "make install_jsregexp",
    dependencies = { "rafamadriz/friendly-snippets" },
    config = function()
      require("luasnip.loaders.from_vscode").lazy_load()
    end

  },
  {
    "neovim/nvim-lspconfig",
  },
  { "hrsh7th/cmp-nvim-lsp" },
  {
    -- cmp 
    "hrsh7th/nvim-cmp",
    config = function()
      local cmp = require('cmp')
      local luasnip = require('luasnip')

      cmp.setup({
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body) -- Expand snippet using LuaSnip
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ['<C-p>'] = cmp.mapping.select_prev_item({ behavior = 'select' }),
          ['<C-n>'] = cmp.mapping.select_next_item({ behavior = 'select' }),
          ['<CR>'] = cmp.mapping.confirm({ select = true }),
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-k>'] = cmp.mapping.scroll_docs(-4),
          ['<C-j>'] = cmp.mapping.scroll_docs(4),
          ['<C-f>'] = cmp.mapping(function(fallback)
            if luasnip.expand_or_jumpable() then
              luasnip.expand_or_jump()
            else
              fallback()
            end
          end),
          ['<C-b>'] = cmp.mapping(function(fallback)
            if luasnip.jumpable(-1) then
              luasnip.jump(-1)
            else
              fallback()
            end
          end),
        }),
        sources = {
          { name = 'nvim_lsp' },
        },
      })
    end,
  },
  {
    -- Lsp zero
    "VonHeikemen/lsp-zero.nvim",
    branch = "v4.x",
    config = function()
      local lsp_zero = require('lsp-zero')

      local lsp_attach = function(client, bufnr)
        local opts = { buffer = bufnr }

        -- Key mappings for LSP actions
        vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
        vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
        vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
        vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
        vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
        vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
        vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
        vim.keymap.set({'n', 'x'}, '<F3>', '<cmd>lua vim.lsp.buf.format({ async = true })<cr>', opts)
        vim.keymap.set('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
        vim.keymap.set('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<cr>', { noremap = true, silent = true })
      end

      lsp_zero.extend_lspconfig({
        sign_text = true,
        lsp_attach = lsp_attach,
        capabilities = require('cmp_nvim_lsp').default_capabilities(),
      })
      require('mason').setup({})
      require('mason-lspconfig').setup({
        -- Replace the language servers listed here 
        -- with the ones you want to install
        ensure_installed = {'lua_ls', 'rust_analyzer','csharp_ls'},
        handlers = {
          function(server_name)
            require('lspconfig')[server_name].setup({})
          end,
        },
      })

      -- LSP settings for specific languages
      require('lspconfig').pyright.setup{} -- Python setup
      require('lspconfig').csharp_ls.setup{
        root_dir = function(fname)
          return require('lspconfig.util').find_git_ancestor(fname) or 
          require('lspconfig.util').root_pattern('*.sln', '*.csproj')(fname) or
          vim.loop.cwd() -- fallback to the current working directory
        end,
      }
      -- CSharp

      -- Eslint
      require('lspconfig').eslint.setup{
        on_attach = function(client, bufnr)
          vim.api.nvim_create_autocmd("BufWritePre", {
            buffer = bufnr,
            command = "EslintFixAll",
          })
        end,
      }
      -- Ts/js
      require('lspconfig').ts_ls.setup{
        filetypes = {
          "javascript",
          "typescript",
          "ejs",
        },
      }
    end,
  },
}

