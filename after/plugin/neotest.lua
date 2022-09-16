require('neotest').setup({
    adapters = {
        require("neotest-go")({
            experimental = {test_table = true},
            args = {
                "-tags=mock,integration_tests", "-mod=vendor", "-failfast",
                "-race"
            }
        })
    },
    -- laggy on large repositories
    discovery = {enabled = false}
})
