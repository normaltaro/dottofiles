local function keymap(mode, lhs, rhs, opts)
    local options = { noremap = true, silent = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.keymap.set(mode, lhs, rhs, options)
end

-- Leader and Ergonomics
vim.g.mapleader=" "
keymap("n", "<leader>ch", vim.cmd.noh)
keymap("t", "<ESC>", [[<C-\><C-N>]])
keymap({"i","s"}, "<M-e>", "<ESC>")
keymap({"i","s"}, "<M-q>", vim.cmd.quit)

-- Focus Cursor on Windows
keymap({"n"}, "<C-h>", [[<C-w>h]])
keymap({"n"}, "<C-j>", [[<C-w>j]])
keymap({"n"}, "<C-k>", [[<C-w>k]])
keymap({"n"}, "<C-l>", [[<C-w>l]])
keymap({"t"}, "<C-h>", [[<C-\><C-N><C-w>h]])
keymap({"t"}, "<C-j>", [[<C-\><C-N><C-w>j]])
keymap({"t"}, "<C-k>", [[<C-\><C-N><C-w>k]])
keymap({"t"}, "<C-l>", [[<C-\><C-N><C-w>l]])

-- Move Windows
keymap({"n","t"}, "<C-M-h>", [[<C-w>H]])
keymap({"n","t"}, "<C-M-j>", [[<C-w>J]])
keymap({"n","t"}, "<C-M-k>", [[<C-w>K]])
keymap({"n","t"}, "<C-M-l>", [[<C-w>L]])

-- Plugin Remaps --
-- nvim-tree
keymap("n", "<leader>pt", vim.cmd.NvimTreeToggle)

--toggleterm
local function toggleterm()
    return "<CMD>" .. vim.v.count .. "ToggleTerm<CR>"
end
keymap({"n"}, "<leader>tt", toggleterm, { expr=true })

--code_runner
keymap({"n", "t"}, "<F5>", ":RunCode<CR>", { silent = false})

--luasnip
local ls = require("luasnip")
keymap({"i","s"}, "<M-j>", function()
    if ls.jumpable(1) then
        ls.jump(1)
    end
end)
keymap({"i","s"}, "<M-k>", function()
    if ls.jumpable(-1) then
        ls.jump(-1)
    end
end)

--telescope
local ts = require("telescope.builtin")
keymap("n", "<leader>gf", ts.lsp_dynamic_workspace_symbols)
keymap("n", "<leader>fh", ts.help_tags)
keymap("n", "<leader>ff", ts.find_files)
keymap("n", "<leader>fg", ts.live_grep)
