-- vim.lsp.config and vim.lsp.enable are the new built-in lsp
-- configuration tools in vim 0.11
--
-- See documentation at https://neovim.io/doc/user/lsp.html

-- default the diagnostic config to true; I set bindings to toggle
-- this off and on
vim.diagnostic.config({ virtual_text = true })

local python_root_dir_markers = {
  'pyproject.toml',
  -- these are hacks to make pyrefly work on conformance tests / pyrefly root dir
  'pyrefly_wasm',
  '_qualifiers_final_decorator.pyi',
}
vim.lsp.config.pyrefly = {
  cmd = { 'pyrefly', 'lsp' },
  root_markers = python_root_dir_markers,
  filetypes = { 'python' }
}

vim.lsp.enable({'pyrefly'})

