local function open_nvim_tree(data)

    -- buffer is a directory
    local directory = vim.fn.isdirectory(data.file) == 1

    if not directory then
        return
    end

    -- change to the directory
    vim.cmd.cd(data.file)

    -- open the tree
    require("nvim-tree.api").tree.open()
end

-- Open NvimTree on Startup
vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })

-- Reload Config on Write (hot reload sucks asss)
-- local configdir = vim.fn.expand("~") .. "/.config/nvim/"
-- vim.api.nvim_create_autocmd({ "BufWritePost" }, {
--     pattern = { configdir .. "*" },
--     callback = function()
--         vim.cmd.source(configdir .. "init.lua")
--         vim.cmd.echo('"Reloaded NeoVim Config"')
--     end
-- })

-- LSP for standalone *.rs in a directory
vim.api.nvim_create_autocmd({ "BufWinEnter" }, {
    pattern = { vim.fn.expand("~") .. "/code/rust/learn/*.rs" },
    command = "RustStartStandaloneServerForBuffer"
})
