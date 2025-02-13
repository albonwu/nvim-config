require("conform").setup({
    formatters_by_ft = {
        python = { "black" },
        javascript = { "prettier" },
        java = { "google-java-format" },
    },
    format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
    },
})

