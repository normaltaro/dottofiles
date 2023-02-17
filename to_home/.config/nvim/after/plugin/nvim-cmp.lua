local cmp = require('cmp')
local lspkind = require('lspkind')

cmp.setup {
    formatting = {
        format = lspkind.cmp_format({
            maxwidth = 30,
            ellipsis_char = '…',
        })
    }
}


--cmp.setup{
--    formatting = {
--        format = function(entry, vim_item)
--            if string.len(vim_item.abbr) >= 27 then
--                vim_item.abbr = string.sub(vim_item.abbr, 1, 27) .. "…"
--            end
--            return vim_item
--        end
--    }
--}
