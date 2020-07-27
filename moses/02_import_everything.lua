--[[

  Seriál "Programovací jazyk Lua"

  Demonstrační příklad k článku:
      Podpora funkcionálního programovaní v jazyku Lua s využitím knihovny Moses

]]


-- načtení knihovny Moses a současně import symbolů do globálního jmenného prostoru
M = require "moses"
M.import()


-- pokus o použití funkce z knihovny Moses
table = range(10, 1)
for index, value in ipairs(table) do
    print(index, value)
end


-- finito
