require('telescope').setup({
    defaults = {
        layout_strategy = 'horizontal',
        layout_config = {horizontal = {width = 0.85}},
        file_ignore_patterns = {"mock%_.*%.go", "go/vendor"}
    },
    extensions = {
        fzf = {
            fuzzy = true, -- false will only do exact matching
            override_generic_sorter = true, -- override the generic sorter
            override_file_sorter = true, -- override the file sorter
            case_mode = "smart_case" -- or "ignore_case" or "respect_case"
            -- the default case_mode is "smart_case"}}
        }
    }
})
