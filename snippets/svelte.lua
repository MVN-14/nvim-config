local ls = require("luasnip")
local fmt = require("luasnip.extras.fmt").fmt

return {
  ls.s("svelte", fmt([[
<script lang="ts">
</script>

<{}>
</{}>

<style>
</style>
]], {
      i(1, "div"),
      rep(1)
    })
  )
}


