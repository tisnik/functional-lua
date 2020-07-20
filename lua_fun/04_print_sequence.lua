--[[

  Seriál "Programovací jazyk Lua"

  Demonstrační příklad k článku:
      Lua Fun: knihovna pro zpracování konečných i nekonečných sekvencí v jazyce Lua

]]


-- načtení knihovny Lua Fun a současně import symbolů do globálního jmenného prostoru
require "fun"()


print("Method #1")
print("---------")

-- průchod obsahem tabulky, která vznikne z generátoru
for index, value in ipairs(totable(range(10))) do
    print(index, value)
end


print("\nMethod #2")
print("---------")

-- iterace hodnotami produkovanými generátorem
for index, value in iter(range(10)) do
    print(index, value)
end


-- finito
