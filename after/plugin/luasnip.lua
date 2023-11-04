-- local ls = require "luasnip"

-- require("luasnip.loaders.from_lua").load({paths = "~/.config/nvim.snippets/"})

-- ls.config.set_config({
--   history = true,
--   updateevents = "TextChanged,TextChangedI",
--   enable_autosnippets = true,
--   ext_opts = {
--     [require('luasnip.util.types').choiceNode] = {
--       active = {
--         virt_text = {{ "_", "GruvboxOrange" }}
--       }
--     }
--   }
-- })

-- vim.keymap.set({ "i", "s" }, "<c-k>", function()
--   if ls.expand_or_jumpable() then
--     ls.expand_or_jump()
--   end
-- end)

-- ls.add_snippets("all", {
--   ls.snippet("#!", {
--     ls.text_node("#!/usr/bin/bash")
--   })
-- })

-- ls.add_snippets("svelte", {
--   ls.snippet("sv", {
--     ls.text_node(
--       {'<script lang="ts">',
--       '</script>',
--       '',
--       '<div></div>',
--       '',
--       '<style>',
--       '</style>'}
--     )
--   })
-- })

-- ls.add_snippets("all", {
--   ls.snippet("hg", {
--     ls.text_node("test2"),
--     ls.insert_node(1, "placeholder")
--   })
-- })

