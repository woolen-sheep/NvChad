---@type MappingsTable
local M = {}
vim.g.mapleader = ';'
M.general = {
  n = {
    ["<leader>ww"] = { "<cmd>:w<CR>", "save file"},
    ["gf"] = {
      function()
        vim.lsp.buf.format({ async = true })
      end,
      "Format file"
    },
    ["gd"] = {"<cmd>Lspsaga lsp_finder<CR>", "Find symbol" },
    ["gp"] = {"<cmd>Lspsaga peek_definition<CR>", "Peek definition" },
    ["gh"] = {"<cmd>Lspsaga hover_doc<CR>", "Open document" },
    ["gr"] = {"<cmd>Lspsaga rename<CR>", "Rename symbol" },
    ["ga"] = {"<cmd>Lspsaga code_action<CR>", "Open code action" },
    ["go"] = {"<cmd>Lspsaga show_line_diagnostics<CR>", "Show diagnostics" },
    ["gO"] = {"<cmd>Lspsaga outline<CR>", "Open code outline" },
    ["gT"] = {"<cmd>Lspsaga peek_type_definition<CR>", "Peek type definition" },
    ["[d"] = {"<cmd>Lspsaga diagnostic_jump_prev<CR>", "Jump to previous error" },
    ["]d"] = {"<cmd>Lspsaga diagnostic_jump_next<CR>", "Jump to next error" },
    ["gt"] = {"<CMD>TroubleToggle<CR>", "Open quickfix" },
  },
  t = {
    ["<ESC>"] = {"<C-\\><C-n>", "Escape terminal mode"},
  },
}

-- more keybinds!

return M
