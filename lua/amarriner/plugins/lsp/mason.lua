local mason_status, mason = pcall(require, "mason")
if not mason_status then
  return
end

local mason_lspconfig_status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_status then
  return
end

local mason_null_ls_status, mason_null_ls = pcall(require, "mason-null-ls")
if not mason_null_ls_status then
  return
end


mason.setup()

mason_lspconfig.setup({
  ensure_installed = {
    "lua_ls",
    "html",
    "cssls",
    "dockerls",
    "eslint",
    "jsonls",
    "pyright"
  }
})

-- https://github.com/jay-babu/mason-null-ls.nvim/blob/de19726de7260c68d94691afb057fa73d3cc53e7/lua/mason-null-ls/mappings/filetype.lua#L2
mason_null_ls.setup({
  ensure_installed = {
    "prettier",
    "stylua",
    "eslint_d",
    "beautysh",
    "hadolint",
    "curlylint",
    "jq",
    "markdownlint",
    "flake8",
    "dprint"
  }
})
