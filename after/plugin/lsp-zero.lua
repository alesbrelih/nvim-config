Handlers = require('lsp-handlers')

local on_attach = function(client, bufnr)
    require'lsp_signature'.on_attach(client)

    local function buf_set_keymap(...)
        vim.api.nvim_buf_set_keymap(bufnr, ...)
    end
    local function buf_set_option(...)
        vim.api.nvim_buf_set_option(bufnr, ...)
    end

    buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

    local opts = {noremap = true, silent = true}
    buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
    buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
    buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
    buf_set_keymap('n', 'gi', '<Cmd>lua Handlers.implementation()<CR>', opts)
    buf_set_keymap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
    buf_set_keymap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
    buf_set_keymap('n', '<leader>lrn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
    buf_set_keymap('n', '<leader>lrf', '<cmd>lua vim.lsp.buf.references()<CR>',
                   opts)
    buf_set_keymap('n', '<leader>ld',
                   '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
    buf_set_keymap('n', '<leader>ll',
                   '<cmd>lua vim.diagnostic.set_loclist()<CR>', opts)
    buf_set_keymap('n', '<leader>lca', '<cmd>lua vim.lsp.buf.code_action()<CR>',
                   opts)

    -- Set some keybinds conditional on server capabilities

    if client.server_capabilities.document_range_formatting then
        buf_set_keymap("n", "<leader>lf",
                       "<cmd>lua vim.lsp.buf.range_formatting()<CR>", opts)
    elseif client.server_capabilities.document_formatting then
        buf_set_keymap("n", "<leader>lf",
                       "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
    end

    -- Set autocommands conditional on server_capabilities
    if client.server_capabilities.document_highlight then
        vim.api.nvim_exec([[
        hi LspReferenceRead cterm=bold ctermbg=red guibg=LightYellow
        hi LspReferenceText cterm=bold ctermbg=red guibg=LightYellow
        hi LspReferenceWrite cterm=bold ctermbg=red guibg=LightYellow
        augroup lsp_document_highlight
        autocmd! * <buffer>
        autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
        autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
        augroup END
        ]], false)
    end
end

local lsp = require('lsp-zero')
local nvim_lsp = require('lspconfig')

lsp.preset('recommended')
lsp.set_preferences({set_lsp_keymaps = false})
lsp.on_attach(on_attach)

lsp.setup_nvim_cmp({
    sources = {
        {name = 'path', keyword_length = 1},
        {name = 'nvim_lsp', keyword_length = 1},
        {name = 'buffer', keyword_length = 2},
        {name = 'luasnip', keyword_length = 2}
    }
})

lsp.configure('gopls', {
    flags = {debounce_text_changes = 150},
    init_options = {usePlaceholders = true},
    settings = {
        gopls = {
            experimentalPostfixCompletions = true,
            codelenses = {
                generate = true,
                gc_details = true,
                test = true,
                tidy = true
            },
            diagnosticsDelay = "500ms",
            buildFlags = {"-tags=mock,integration_tests"},
            usePlaceholders = true,
            completeUnimported = true,
            staticcheck = true,
            matcher = "fuzzy",
            symbolMatcher = "fuzzy",
            gofumpt = true,
            analyses = {
                nilness = true,
                shadow = true,
                unusedparams = true,
                unusedwrite = true
            }
        }
    },
    filetypes = {"go", "gomod"},
    root_dir = nvim_lsp.util.root_pattern("go.mod")
})

lsp.setup()
