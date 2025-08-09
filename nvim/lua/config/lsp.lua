-- lsp server enabled
vim.lsp.enable({
  'lua_ls',
	'nixd',
	'jdtls',
	'basedpyright',
	'emmet_ls',
	'gopls',
})

-- diagnostics config for lsps
vim.diagnostic.config({ virtual_text = { current_line = true } })

-- vim.api.nvim_create_autocmd('LspAttach', {
--   callback = function(ev)
--     local client = vim.lsp.get_client_by_id(ev.data.client_id)
--     if client:supports_method('textDocument/completion') then
--       vim.opt.completeopt = { 'menu', 'menuone', 'noinsert', 'fuzzy', 'popup' }
--       vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
-- 			vim.keymap.set('i', '<C-Space>', vim.lsp.completion.get)
--     end
--   end,
-- })
-- vim.cmd("set completeopt+=noselect")
