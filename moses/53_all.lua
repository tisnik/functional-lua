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

-- několik testů na vlastnosti prvků tabulky
print("all(a, lambda x: x < 0.0):", all(a, function (x) return x < 0.0 end))
print("all(a, lambda x: x > 0.0):", all(a, function (x) return x > 0.0 end))
print("all(a, lambda x: 0.0 < x < 1.0):", all(a, function (x) return 0.0 < x and x < 1.0 end))
print("all(a, lambda x: 0.0 <= x <= 1.0):", all(a, function (x) return 0.0 <= x and x <= 1.0 end))

printSeparator()

-- finito
