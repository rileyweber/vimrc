-- local ls = require('luasnip')


-- require('luasnip.loaders.from_vscode').lazy_load()


local ls = require('luasnip')


ls.config.setup({
  history = true,

  updateevents = "TextChanged,TextChangedI",

  -- enable_autosnippets = true
})

vim.keymap.set({ "i", "s" }, "<C-k>", function()
  if ls.exand_or_jumpable() then
    ls.expand_or_jump()
  end
end, {silent=true})

vim.keymap.set({"i", "s"}, "<C-j>", function()
  if ls.jumpable(-1) then
    ls.jump(-1)
  end
end, {silent=true});
