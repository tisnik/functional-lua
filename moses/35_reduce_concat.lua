--[[

  Seriál "Programovací jazyk Lua"

  Demonstrační příklad k článku:
      Podpora funkcionálního programovaní v jazyku Lua s využitím knihovny Moses

]]


-- načtení knihovny Moses a současně import symbolů do globálního jmenného prostoru
M = require "moses"
M.import()


-- vstupní pole
a = {"foo", "bar", "baz"}

-- postupné zpracování prvků pole zleva s akumulací výsledku
print(reduce(a, function (x, y) return x .. " " .. y end))


-- finito
