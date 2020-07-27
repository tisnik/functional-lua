--[[

  Seriál "Programovací jazyk Lua"

  Demonstrační příklad k článku:
      Podpora funkcionálního programovaní v jazyku Lua s využitím knihovny Moses

]]


-- načtení knihovny Moses
local M = require "moses"


-- pokus o použití funkce z knihovny Moses
table = M.range(10, 1)
for index, value in ipairs(table) do
    print(index, value)
end


-- finito
