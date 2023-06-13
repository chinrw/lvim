--[[
 THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT
 `lvim` is the global options object
]]

-- vim options
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.relativenumber = true

-- general
lvim.format_on_save = {
	enabled = false,
	pattern = "*.lua",
	timeout = 1000,
}

-- setup colorscheme
lvim.colorscheme = "tokyonight" -- set to a custom theme
lvim.builtin.time_based_themes = true -- set false to use your own configured theme
lvim.transparent_window = true -- enable/disable transparency
lvim.builtin.treesitter.rainbow.enable = true
lvim.builtin.treesitter.rainbow.max_file_lines = 5000
lvim.debug = false
vim.lsp.set_log_level("error")
lvim.log.level = "warn"
require("user.neovim").config()
lvim.lsp.code_lens_refresh = true
lvim.lsp.installer.setup.automatic_installation = false

-- keymappings <https://www.lunarvim.org/docs/configuration/keybindings>
lvim.leader = "."

-- copy to clipboard
vim.opt.mouse = "a"
vim.opt.clipboard = "unnamedplus"

-- unset <leader>w
-- lvim.keys.normal_mode["<Leader>w"] = nil
lvim.keys.insert_mode["kj"] = "<ESC>"

-- tab completion
lvim.builtin.cmp.preselect = true

-- -- Use which-key to add extra bindings with the leader-key prefix
-- lvim.builtin.which_key.mappings["W"] = { "<cmd>noautocmd w<cr>", "Save without formatting" }
-- lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }

-- Automatically install missing parsers when entering buffer
lvim.builtin.treesitter.auto_install = true

-- Customization
-- =========================================
lvim.builtin.sell_your_soul_to_devil = { active = true, prada = true } -- if you want microsoft to abuse your soul
lvim.builtin.lastplace = { active = false } -- change to false if you are jumping to future
lvim.builtin.tabnine = { active = false } -- change to false if you don't like tabnine
lvim.builtin.persistence = { active = false } -- change to false if you don't want persistence
lvim.builtin.presence = { active = false } -- change to true if you want discord presence
lvim.builtin.orgmode = { active = false } -- change to true if you want orgmode.nvim
lvim.builtin.dap.active = true -- change this to enable/disable debugging
lvim.builtin.fancy_statusline = { active = false } -- enable/disable fancy statusline
lvim.builtin.fancy_wild_menu = { active = true } -- enable/disable cmp-cmdline
lvim.builtin.fancy_diff = { active = true } -- enable/disable fancier git diff
lvim.builtin.lua_dev = { active = true } -- change this to enable/disable folke/lua_dev
lvim.builtin.test_runner = { active = true, runner = "ultest" } -- change this to enable/disable ultest or neotest
lvim.builtin.cheat = { active = true } -- enable/disable cheat.sh integration
lvim.builtin.sql_integration = { active = true } -- use sql integration
lvim.builtin.smooth_scroll = "" -- for smoth scrolling, can be "cinnamon", "neoscroll" or ""
lvim.builtin.neoclip = { active = true, enable_persistent_history = false }
lvim.builtin.nonumber_unfocus = true -- diffrentiate between focused and non focused windows
lvim.builtin.custom_web_devicons = false -- install https://github.com/Nguyen-Hoang-Nam/mini-file-icons
lvim.builtin.harpoon = { active = false } -- use the harpoon plugin
lvim.builtin.remote_dev = { active = false } -- enable/disable remote development
lvim.builtin.cursorline = { active = true } -- use a bit fancier cursorline
lvim.builtin.motion_provider = "hop" -- change this to use different motion providers ( hop or leap )
lvim.builtin.hlslens = { active = true } -- enable/disable hlslens
lvim.builtin.csv_support = true -- enable/disable csv support
lvim.builtin.sidebar = { active = true } -- enable/disable sidebar
lvim.builtin.task_runner = "async_tasks" -- change this to use different task runners ( "async_tasks" or "overseer" or "")
lvim.builtin.winbar_provider = "navic" -- can be "filename" or "treesitter" or "navic" or ""
lvim.builtin.metals = {
  active = false, -- enable/disable nvim-metals for scala development
  fallbackScalaVersion = "3.2.0-RC3",
  serverVersion = "0.11.12",
}
lvim.builtin.collaborative_editing = { active = false } -- enable/disable collaborative editing
lvim.builtin.file_browser = { active = true } -- enable/disable telescope file browser
lvim.builtin.sniprun = { active = true } -- enable/disable sniprun
lvim.builtin.tag_provider = "symbols-outline" -- change this to use different tag providers ( symbols-outline or vista )
lvim.builtin.editorconfig = { active = true } -- enable/disable editorconfig
lvim.builtin.global_statusline = true -- set true to use global statusline
lvim.builtin.dressing = { active = true } -- enable to override vim.ui.input and vim.ui.select with telescope
lvim.builtin.refactoring = { active = true } -- enable to use refactoring.nvim code_actions
lvim.builtin.tmux_lualine = false -- use vim-tpipeline to integrate lualine and tmux
lvim.builtin.lsp_lines = true -- enable/disable lsp_lines to display lsp virtual text below instead of behind
vim.use_icons = true
lvim.builtin.legendary = { active = false } -- enable/disable legendary plugin ( ctrl-p command )
lvim.builtin.tree_provider = "nvimtree" -- can be "neo-tree" or "nvimtree" or ""
lvim.builtin.lir.active = false
lvim.builtin.breadcrumbs.active = true
lvim.builtin.illuminate.active = true
lvim.builtin.indentlines.active = true
lvim.builtin.noice = { active = false } -- enables noice.nvim and inc-rename.nvim
lvim.builtin.go_programming = { active = true } -- gopher.nvim + nvim-dap-go
lvim.builtin.python_programming = { active = true } -- swenv.nvim + nvim-dap-python + requirements.txt.vim
lvim.builtin.web_programming = { active = false } -- typescript.nvim + package-info.nvim
lvim.builtin.rust_programming = { active = true } -- rust_tools.nvim + crates.nvim
lvim.builtin.cpp_programming = { active = true } -- clangd_extensions.nvim + make-tools.nvim
lvim.builtin.cmp.cmdline.enable = true
lvim.builtin.borderless_cmp = true
lvim.builtin.colored_args = true -- if true then sets up hlargs.nvim
lvim.builtin.bigfile.active = true
-- WARN: mind plugin is deprecated ( use with caution )
lvim.builtin.mind = { active = false, root_path = "~/.mind" } -- enable/disable mind.nvim

-- Additional Actions Based on Custom User Config
-- =========================================
if lvim.builtin.winbar_provider == "navic" then
	vim.opt.showtabline = 1
	lvim.keys.normal_mode["<tab>"] =
		"<cmd>lua require('telescope.builtin').buffers(require('telescope.themes').get_dropdown{previewer = false, initial_mode='normal'})<cr>"
	lvim.builtin.bufferline.active = true
	lvim.builtin.breadcrumbs.active = true
end
if lvim.builtin.breadcrumbs.active and lvim.builtin.noice.active then
	table.insert(lvim.builtin.breadcrumbs.winbar_filetype_exclude, "vim")
end
lvim.builtin.nvimtree.active = lvim.builtin.tree_provider == "nvimtree"

if lvim.builtin.cursorline.active then
	lvim.lsp.document_highlight = false
end

lvim.builtin.latex = {
  view_method = "zathura", -- change to zathura if you are on linux
  preview_exec = "/usr/bin/zathura", -- change this to zathura as well
  rtl_support = true , -- if you want to use xelatex, it's a bit slower but works very well for RTL langs
  active = false, -- set to true to enable
}

-- Override Lunarvim defaults
-- =========================================
require("user.builtin").config()

-- StatusLine
-- =========================================
if lvim.builtin.fancy_statusline.active then
	require("user.lualine").config()
end

-- Debugging
-- =========================================
if lvim.builtin.dap.active then
	require("user.dap").config()
end

-- Language Specific
-- =========================================
vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, {
	"clangd",
	"dockerls",
	"gopls",
	"golangci_lint_ls",
	"jdtls",
	"pyright",
	"rust_analyzer",
	"taplo",
	"texlab",
	"tsserver",
	"yamlls",
})
require("user.null_ls").config()

-- Additional Plugins
-- =========================================
require("user.plugins").config()

-- Autocommands
-- =========================================
require("user.autocommands").config()

-- Additional Keybindings
-- =========================================
require("user.keybindings").config()

-- lvim.builtin.treesitter.ignore_install = { "haskell" }

-- -- generic LSP settings <https://www.lunarvim.org/docs/languages#lsp-support>

-- --- disable automatic installation of servers
-- lvim.lsp.installer.setup.automatic_installation = false

-- ---configure a server manually. IMPORTANT: Requires `:LvimCacheReset` to take effect
-- ---see the full default list `:lua =lvim.lsp.automatic_configuration.skipped_servers`
-- vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "pyright" })
-- local opts = {} -- check the lspconfig documentation for a list of all possible options
-- require("lvim.lsp.manager").setup("pyright", opts)

-- ---remove a server from the skipped list, e.g. eslint, or emmet_ls. IMPORTANT: Requires `:LvimCacheReset` to take effect
-- ---`:LvimInfo` lists which server(s) are skipped for the current filetype
-- lvim.lsp.automatic_configuration.skipped_servers = vim.tbl_filter(function(server)
--   return server ~= "emmet_ls"
-- end, lvim.lsp.automatic_configuration.skipped_servers)

-- -- you can set a custom on_attach function that will be used for all the language servers
-- -- See <https://github.com/neovim/nvim-lspconfig#keybindings-and-completion>
-- lvim.lsp.on_attach_callback = function(client, bufnr)
--   local function buf_set_option(...)
--     vim.api.nvim_buf_set_option(bufnr, ...)
--   end
--   --Enable completion triggered by <c-x><c-o>
--   buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
-- end

-- -- linters and formatters <https://www.lunarvim.org/docs/languages#lintingformatting>
-- local formatters = require "lvim.lsp.null-ls.formatters"
-- formatters.setup {
--   { command = "stylua" },
--   {
--     command = "prettier",
--     extra_args = { "--print-width", "100" },
--     filetypes = { "typescript", "typescriptreact" },
--   },
-- }
-- local linters = require "lvim.lsp.null-ls.linters"
-- linters.setup {
--   { command = "flake8", filetypes = { "python" } },
--   {
--     command = "shellcheck",
--     args = { "--severity", "warning" },
--   },
-- }

-- -- Additional Plugins <https://www.lunarvim.org/docs/plugins#user-plugins>
-- -- Autocommands (`:help autocmd`) <https://neovim.io/doc/user/autocmd.html>
