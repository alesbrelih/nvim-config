-- local utils = require('utils')
local null_ls = require('null-ls')

local sources = {
    null_ls.builtins.formatting.eslint, null_ls.builtins.formatting.gofmt,
    null_ls.builtins.formatting.jq, null_ls.builtins.formatting.lua_format,
    null_ls.builtins.formatting.markdownlint,
    null_ls.builtins.formatting.nginx_beautifier,
    null_ls.builtins.formatting.pg_format,
    null_ls.builtins.formatting.prettier.with({
        filetypes = {
            "javascript", "javascriptreact", "typescript", "typescriptreact",
            "vue", "css", "scss", "less", "html"
        }
    }), null_ls.builtins.formatting.stylelint,
    null_ls.builtins.formatting.trim_newlines,
    null_ls.builtins.formatting.trim_whitespace,
    null_ls.builtins.diagnostics.ansiblelint,
    null_ls.builtins.diagnostics.codespell, null_ls.builtins.diagnostics.eslint,
    null_ls.builtins.diagnostics.hadolint,
    null_ls.builtins.diagnostics.luacheck,
    null_ls.builtins.diagnostics.markdownlint,
    null_ls.builtins.diagnostics.misspell,
    null_ls.builtins.diagnostics.shellcheck,
    null_ls.builtins.diagnostics.yamllint,
    null_ls.builtins.diagnostics.golangci_lint,
    null_ls.builtins.code_actions.eslint,
    null_ls.builtins.code_actions.shellcheck,
    null_ls.builtins.formatting.goimports_reviser.with({
        extra_args = {"-local", "ericsson", "-rm-unused", "-set-alias"}
    })
}

require('null-ls').setup({
    sources = sources,
    on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
            vim.api.nvim_clear_autocmds({group = augroup, buffer = bufnr})
            vim.api.nvim_create_autocmd("BufWritePre", {
                group = augroup,
                buffer = bufnr,
                callback = function()
                    vim.lsp.buf.format({
                        bufnr = bufnr,
                        filter = function(c)
                            return c.name == "null-ls"
                        end
                    })
                end
            })
        end
    end
})
