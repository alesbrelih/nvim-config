vim.g.ultest_use_pty = 1

local M = {}

function M.post()
    local builders = {
        ["go#gotest"] = function(cmd)
            local args = {}

            for i = 3, #cmd, 1 do
                local arg = cmd[i]
                if vim.startswith(arg, "-") then
                    arg = "-test." .. string.sub(arg, 2)
                end
                args[#args + 1] = arg
            end
            print(vim.inspect(args))
            return {
                dap = {
                    type = "go",
                    request = "launch",
                    mode = "test",
                    program = "${workspaceFolder}",
                    dlvToolPath = vim.fn.exepath("dlv"),
                    args = args
                },
                parse_result = function(lines)
                    return lines[#lines] == "FAIL" and 1 or 0
                end
            }
        end
    }
    require("ultest").setup({builders = builders})
end

return M
