local plenary_scandir = require('plenary.scandir')

local utils = {}

local scopes = {o = vim.o, b = vim.bo, w = vim.wo}

function utils.opt(scope, key, value)
    scopes[scope][key] = value
    if scope ~= 'o' then scopes['o'][key] = value end
end

function utils.map(mode, lhs, rhs, opts)
    local options = {noremap = true}
    if opts then options = vim.tbl_extend('force', options, opts) end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

function utils.exists(file)
    local f = io.open(file)
    return f and io.close(f)
end

function utils.gitcheck(dir)
    while #dir > 0 and not utils.exists(dir .. "/.git") do
        dir = dir:gsub("/+[^/]*$", "")
    end
    return #dir > 0 and dir
end

function utils.get_files_in_project(pattern, depth, hidden)
    depth = depth or 3
    hidden = hidden or true

    local git_root = utils.gitcheck(vim.fn.expand('%:p:h'))
    local files = plenary_scandir.scan_dir(git_root, {
        search_pattern = pattern,
        depth = depth,
        hidden = hidden
    })
    return files
end

return utils
