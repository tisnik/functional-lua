--[[

  Seriál "Programovací jazyk Lua"

  Demonstrační příklad k článku:
      Podpora funkcionálního programovaní v jazyku Lua s využitím knihovny Moses

]]


-- načtení knihovny Moses a současně import symbolů do globálního jmenného prostoru
M = require "moses"
M.import()


-- pomocná funkce pro součin jejích dvou parametrů
function multiply(x, y)
    return x * y
end


-- výpočet faktoriálu vstupních hodnot 0 až 10
for n = 0, 10 do
    -- konstrukce pole
    a = range(1, n)
    -- výpočet produktu hodnot 1..n == n!
    prod = reduce(a, multiply)
    -- tisk produktu hodnot 1..n == n!
    print(n, prod)
end


-- finito
