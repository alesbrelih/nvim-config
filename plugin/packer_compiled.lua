-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/ales/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/ales/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/ales/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/ales/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/ales/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["DAPInstall.nvim"] = {
    loaded = true,
    path = "/Users/ales/.local/share/nvim/site/pack/packer/start/DAPInstall.nvim"
  },
  ["colorbuddy.nvim"] = {
    loaded = true,
    path = "/Users/ales/.local/share/nvim/site/pack/packer/start/colorbuddy.nvim"
  },
  ["emmet-vim"] = {
    loaded = true,
    path = "/Users/ales/.local/share/nvim/site/pack/packer/start/emmet-vim"
  },
  ["git-blame.nvim"] = {
    loaded = true,
    path = "/Users/ales/.local/share/nvim/site/pack/packer/start/git-blame.nvim"
  },
  ["gruvbox-material"] = {
    loaded = true,
    path = "/Users/ales/.local/share/nvim/site/pack/packer/start/gruvbox-material"
  },
  hop = {
    config = { "\27LJ\2\nj\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2\tkeys\28etovxqpdygfblzhckisuran\18term_seq_bias\4\0€€€ÿ\3\nsetup\bhop\frequire\0" },
    loaded = true,
    path = "/Users/ales/.local/share/nvim/site/pack/packer/start/hop"
  },
  kommentary = {
    loaded = true,
    path = "/Users/ales/.local/share/nvim/site/pack/packer/start/kommentary"
  },
  ["lsp_signature.nvim"] = {
    loaded = true,
    path = "/Users/ales/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/Users/ales/.local/share/nvim/site/pack/packer/start/lspkind-nvim"
  },
  ["lspsaga.nvim"] = {
    loaded = true,
    path = "/Users/ales/.local/share/nvim/site/pack/packer/start/lspsaga.nvim"
  },
  ["lua-dev.nvim"] = {
    loaded = true,
    path = "/Users/ales/.local/share/nvim/site/pack/packer/start/lua-dev.nvim"
  },
  neoformat = {
    loaded = true,
    path = "/Users/ales/.local/share/nvim/site/pack/packer/start/neoformat"
  },
  nerdtree = {
    loaded = true,
    path = "/Users/ales/.local/share/nvim/site/pack/packer/start/nerdtree"
  },
  ["nlua.nvim"] = {
    loaded = true,
    path = "/Users/ales/.local/share/nvim/site/pack/packer/start/nlua.nvim"
  },
  ["nord.nvim"] = {
    loaded = true,
    path = "/Users/ales/.local/share/nvim/site/pack/packer/start/nord.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/Users/ales/.local/share/nvim/site/pack/packer/start/nvim-autopairs"
  },
  ["nvim-cheat.sh"] = {
    loaded = true,
    path = "/Users/ales/.local/share/nvim/site/pack/packer/start/nvim-cheat.sh"
  },
  ["nvim-compe"] = {
    loaded = true,
    path = "/Users/ales/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-cursorline"] = {
    loaded = true,
    path = "/Users/ales/.local/share/nvim/site/pack/packer/start/nvim-cursorline"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "/Users/ales/.local/share/nvim/site/pack/packer/start/nvim-dap"
  },
  ["nvim-dap-ui"] = {
    loaded = true,
    path = "/Users/ales/.local/share/nvim/site/pack/packer/start/nvim-dap-ui"
  },
  ["nvim-dap-virtual-text"] = {
    loaded = true,
    path = "/Users/ales/.local/share/nvim/site/pack/packer/start/nvim-dap-virtual-text"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/ales/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-toggleterm.lua"] = {
    loaded = true,
    path = "/Users/ales/.local/share/nvim/site/pack/packer/start/nvim-toggleterm.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/ales/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-treesitter-textobjects"] = {
    loaded = true,
    path = "/Users/ales/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "/Users/ales/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/ales/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/ales/.local/share/nvim/site/pack/packer/opt/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/ales/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  popfix = {
    loaded = true,
    path = "/Users/ales/.local/share/nvim/site/pack/packer/start/popfix"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/Users/ales/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["symbols-outline.nvim"] = {
    loaded = true,
    path = "/Users/ales/.local/share/nvim/site/pack/packer/start/symbols-outline.nvim"
  },
  ["telescope-dap.nvim"] = {
    loaded = true,
    path = "/Users/ales/.local/share/nvim/site/pack/packer/start/telescope-dap.nvim"
  },
  ["telescope-media-files.nvim"] = {
    loaded = true,
    path = "/Users/ales/.local/share/nvim/site/pack/packer/start/telescope-media-files.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\nŠ\1\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\2B\0\2\1K\0\1\0\rdefaults\1\0\0\25file_ignore_patterns\1\0\0\1\3\0\0\17mock%_.*%.go\14go/vendor\nsetup\14telescope\frequire\0" },
    loaded = true,
    path = "/Users/ales/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\ftrouble\frequire\0" },
    loaded = true,
    path = "/Users/ales/.local/share/nvim/site/pack/packer/start/trouble.nvim"
  },
  ["vim-airline"] = {
    loaded = true,
    path = "/Users/ales/.local/share/nvim/site/pack/packer/start/vim-airline"
  },
  ["vim-airline-themes"] = {
    loaded = true,
    path = "/Users/ales/.local/share/nvim/site/pack/packer/start/vim-airline-themes"
  },
  ["vim-dadbod"] = {
    loaded = true,
    path = "/Users/ales/.local/share/nvim/site/pack/packer/start/vim-dadbod"
  },
  ["vim-dadbod-completion"] = {
    loaded = true,
    path = "/Users/ales/.local/share/nvim/site/pack/packer/start/vim-dadbod-completion"
  },
  ["vim-dadbod-ui"] = {
    loaded = true,
    path = "/Users/ales/.local/share/nvim/site/pack/packer/start/vim-dadbod-ui"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "/Users/ales/.local/share/nvim/site/pack/packer/start/vim-devicons"
  },
  ["vim-dispatch"] = {
    loaded = true,
    path = "/Users/ales/.local/share/nvim/site/pack/packer/start/vim-dispatch"
  },
  ["vim-go"] = {
    loaded = true,
    path = "/Users/ales/.local/share/nvim/site/pack/packer/start/vim-go"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/Users/ales/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["vim-test"] = {
    loaded = true,
    path = "/Users/ales/.local/share/nvim/site/pack/packer/start/vim-test"
  },
  ["vim-ultest"] = {
    config = { "require('config.ultest').post()" },
    loaded = true,
    path = "/Users/ales/.local/share/nvim/site/pack/packer/start/vim-ultest"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/Users/ales/.local/share/nvim/site/pack/packer/start/vim-vsnip"
  },
  ["vscode-javascript"] = {
    loaded = true,
    path = "/Users/ales/.local/share/nvim/site/pack/packer/start/vscode-javascript"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14which-key\frequire\0" },
    loaded = true,
    path = "/Users/ales/.local/share/nvim/site/pack/packer/start/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\nŠ\1\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\2B\0\2\1K\0\1\0\rdefaults\1\0\0\25file_ignore_patterns\1\0\0\1\3\0\0\17mock%_.*%.go\14go/vendor\nsetup\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: hop
time([[Config for hop]], true)
try_loadstring("\27LJ\2\nj\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2\tkeys\28etovxqpdygfblzhckisuran\18term_seq_bias\4\0€€€ÿ\3\nsetup\bhop\frequire\0", "config", "hop")
time([[Config for hop]], false)
-- Config for: vim-ultest
time([[Config for vim-ultest]], true)
require('config.ultest').post()
time([[Config for vim-ultest]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\ftrouble\frequire\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
