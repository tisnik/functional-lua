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
print("some(a, 0.5):", some(a, 0.5))
print("some(a, 1.5):", some(a, 1.5))
print("some(a, lambda x: x < 0.2):", some(a, function (x) return x < 0.2 end))
print("some(a, lambda x: x > 2.0):", some(a, function (x) return x > 2.0 end))

printSeparator()

-- finito
