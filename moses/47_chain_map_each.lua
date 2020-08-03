--[[

  Seriál "Programovací jazyk Lua"

  Demonstrační příklad k článku:
      Podpora funkcionálního programovaní v jazyku Lua s využitím knihovny Moses

]]


-- načtení knihovny Moses a současně import symbolů do globálního jmenného prostoru
M = require "moses"
M.import()


-- výpočet faktoriálu vstupních hodnot 1 až 10
fact = M.chain(range(1, 10)):map(function (n) return range(1, n) end):map(product):each(function(x,y) print(y,x) end)


-- finito
