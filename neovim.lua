return {
    {
        "bjarneo/aether.nvim",
        branch = "v2",
        name = "aether",
        priority = 1000,
        opts = {
            transparent = false,
            colors = {
                -- Background colors
                bg = "#150f13",
                bg_dark = "#150f13",
                bg_highlight = "#94838f",

                -- Foreground colors
                -- fg: Object properties, builtin types, builtin variables, member access, default text
                fg = "#f6eff0",
                -- fg_dark: Inactive elements, statusline, secondary text
                fg_dark = "#D4B6BA",
                -- comment: Line highlight, gutter elements, disabled states
                comment = "#94838f",

                -- Accent colors
                -- red: Errors, diagnostics, tags, deletions, breakpoints
                red = "#E97686",
                -- orange: Constants, numbers, current line number, git modifications
                orange = "#f8c3ca",
                -- yellow: Types, classes, constructors, warnings, numbers, booleans
                yellow = "#e36379",
                -- green: Comments, strings, success states, git additions
                green = "#e2556c",
                -- cyan: Parameters, regex, preprocessor, hints, properties
                cyan = "#ea8a9e",
                -- blue: Functions, keywords, directories, links, info diagnostics
                blue = "#E5365D",
                -- purple: Storage keywords, special keywords, identifiers, namespaces
                purple = "#c5a0af",
                -- magenta: Function declarations, exception handling, tags
                magenta = "#e9d8df",
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
