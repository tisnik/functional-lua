--[[

  Seriál "Programovací jazyk Lua"

  Demonstrační příklad k článku:
      Podpora funkcionálního programovaní v jazyku Lua s využitím knihovny Moses

]]


-- načtení knihovny Moses a současně import symbolů do globálního jmenného prostoru
M = require "moses"
M.import()


-- výpočet faktoriálu vstupních hodnot 0 až 10
for n = 0, 10 do
    -- konstrukce pole
    a = range(1, n)
    -- výpočet a tisk produktu hodnot 1..n == n!
    print(n, product(a))
end


-- finito
