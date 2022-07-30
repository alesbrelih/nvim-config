require('neotest').setup({
    adapters = {
        require("neotest-go")({
            args = {
                "-tags=mock,integration_tests", "-mod=vendor", "-failfast",
                "-cover", "-race"
            }
        })
    }
})
