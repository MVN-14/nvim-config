local ls = require "luasnip"

vim.keymap.set({ "i", "s" }, "<c-k>", function()
  if ls.expand_or_jumpable() then
    ls.expand_or_jump()
  end
end)

ls.add_snippets("all", {
  ls.snippet("#!", {
    ls.text_node("#!/usr/bin/bash")
  })
})
ls.add_snippets("svelte", {
  ls.snippet("sv", {
    ls.text_node(
      {'<script lang="ts">',
      '</script>',
      '',
      '<main></main>',
      '',
      '<style>',
      '</style>'}
    )
  })
})

