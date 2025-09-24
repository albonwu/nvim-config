-- lua/plugins/mason-tools.lua
return {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    dependencies = "williamboman/mason.nvim",
    opts = {
        -- **Mason package names** (NOT lspconfig server names)
        ensure_installed = {
            "prettier", "eslint_d", "stylua", "shfmt", "black",
            -- add other formatters/linters you actually use
        },
        auto_update = true,
        run_on_start = true,
    },
}
