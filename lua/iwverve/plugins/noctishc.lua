return {
    'iagorrr/noctishc.nvim',
    priority = 1000,
    config = function()
        -- Remove all italics in highlights
        local function remove_italics()
            local c = require("noctishc.palette")
            local highlights = {
                { "Type", { fg = c.isThisBege, bg = "NONE" } },
                { "Italic", { fg = "NONE", bg = "NONE" } },
                { "@text.emphasis", { link = "Italic" } },
                { "@tag.attribute", { fg = c.pastelYellow, bg = "NONE" } },
                { "markdownItalic", { link = "Italic" } },
                { "markdownBoldItalic", { fg = c.yellow, bg = "NONE", bold = true } },
                { "LspCodeLens", { fg = c.context, bg = "NONE" } },
                { "LspCodeLensSeparator", { fg = c.context, bg = "NONE" } },
                { "TelescopeMatching", { fg = c.seriosYellow, bg = "NONE", bold = true } },
                { "NvimTreeOpenedFolderName", { fg = c.folder_blue, bg = "NONE", bold = true } },
                { "NvimTreeEmptyFolderName", { fg = c.gray, bg = "NONE" } },
                { "NvimTreeGitIgnored", { fg = c.gray, bg = "NONE" } },
                { "LirEmptyDirText", { fg = c.gray, bg = "NONE" } },
                { "Comment", { fg = c.discreetGray, bg = "NONE" } },
                { "@comment", { fg = c.discreetGray, bg = "NONE" } },
            }

            for _, highlight in ipairs(highlights) do
                local key = highlight[1]
                local value = highlight[2]
                vim.api.nvim_set_hl(0, key, value)
            end
        end

        local theme = require("noctishc.theme")
        local set_highlights = theme.set_highlights

        -- Add patch function after original highlights function
        theme.set_highlights = function()
            set_highlights()
            remove_italics()
        end

        vim.cmd([[colorscheme noctishc]])
    end,
}
