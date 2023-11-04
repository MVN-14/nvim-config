local ls = require('luasnip')

local snippets, autosnippets = {}, {}

local fmt = require("luasnip.extras.fmt").fmt
local rep = require("luasnip.extras").rep

local group = vim.api.nvim_create_augroup("Lua Snippets", {clear = true})
local file_pattern = "*.cpp"

-- local snippet = ls.s("hg", fmt([[
-- #ifndef {}
-- #define {}

-- #endif
-- ]], {
--     i(1, 'HEADER_GUARD'),
--     rep(1)
--   }
-- )) 
-- table.insert(snippets, snippet)-- table.insert(snippets, snippet)
return snippets, autosnippets

