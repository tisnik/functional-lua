--[[

  Seriál "Programovací jazyk Lua"

  Demonstrační příklad k článku:
      Lua Fun: knihovna pro zpracování konečných i nekonečných sekvencí v jazyce Lua

]]


-- načtení knihovny Lua Fun a současně import symbolů do globálního jmenného prostoru
require "fun"()


-- inicializovat generátor celých čísel
g1 = range(1, 10, 1)

-- spočítat součet všech prvků v sekvenci
sum = foldl(function(acc, x) return acc + x end, 0, g1)

-- a vypsat ho
print("1 + 2 + ... + 10 = ", sum)


-- finito
