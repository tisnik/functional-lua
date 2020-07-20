--[[

  Seriál "Programovací jazyk Lua"

  Demonstrační příklad k článku:
      Lua Fun: knihovna pro zpracování konečných i nekonečných sekvencí v jazyce Lua

]]


-- načtení knihovny Lua Fun a současně import symbolů do globálního jmenného prostoru
for k, v in pairs(require "fun") do
    _G[k] = v
end


-- pokus o použití funkce z knihovny Lua Fun
print(range(10))


-- finito
