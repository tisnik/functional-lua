--[[

  Seriál "Programovací jazyk Lua"

  Demonstrační příklad k článku:
      Podpora funkcionálního programovaní v jazyku Lua s využitím knihovny Moses

]]


-- načtení knihovny Moses a současně import symbolů do globálního jmenného prostoru
M = require "moses"
M.import()


-- konstrukce pole
a = range(1, 10)

-- výpočet produktu hodnot 1..n == n! s uložením všech mezivýsledků
-- (použila se anonymní funkce)
prod = mapReduce(a, function (x, y) return x * y end)

-- tisk produktu hodnot 1..n == n!
each(prod, function(x,y) print(y,x) end)


-- finito
