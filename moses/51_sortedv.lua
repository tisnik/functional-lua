--[[

  Seriál "Programovací jazyk Lua"

  Demonstrační příklad k článku:
      Podpora funkcionálního programovaní v jazyku Lua s využitím knihovny Moses

]]


-- načtení knihovny Moses a současně import symbolů do globálního jmenného prostoru
M = require "moses"
M.import()

-- oddělení obsahu
function printSeparator()
    print("-------------------------------")
end

a = {}

-- naplnění pole
for i = 1, 9 do
    a[tostring(i)] = 1/i
end

printSeparator()

-- tisk pole
for key, value in pairs(a) do
    print(key, value)
end

printSeparator()

-- tisk pole setříděného podle klíčů
for key, value in sortedk(a) do
    print(key, value)
end

printSeparator()

-- tisk pole setříděného podle hodnot
for key, value in sortedv(a) do
    print(key, value)
end

-- finito
