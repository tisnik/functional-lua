--[[

  Seriál "Programovací jazyk Lua"

  Demonstrační příklad k článku:
      Podpora funkcionálního programovaní v jazyku Lua s využitím knihovny Moses

]]


-- načtení knihovny Moses a současně import symbolů do globálního jmenného prostoru
M = require "moses"
M.import()


-- výpočet faktoriálu vstupních hodnot 1 až 10
n = range(1, 10)

-- pomocné pole se sekvencí
r = map(n, function (n) return range(1, n) end)

-- výpočet produktu hodnot 1..n == n!
f = map(r, product)

-- tisk výsledků funkcí each
each(f, function(x,y) print(y,x) end)


-- finito
