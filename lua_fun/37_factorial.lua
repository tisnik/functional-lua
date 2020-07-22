--[[

  Seriál "Programovací jazyk Lua"

  Demonstrační příklad k článku:
      Lua Fun: knihovna pro zpracování konečných i nekonečných sekvencí v jazyce Lua

]]


-- načtení knihovny Lua Fun a současně import symbolů do globálního jmenného prostoru
require "fun"()


for n = 1, 20 do
    -- inicializovat generátor celých čísel
    g1 = range(1, n)
    prod = product(g1)
    print(n.."! = ", prod)
end

-- výpočet na jediném řádku
print()

for n = 1, 20 do
    -- inicializovat generátor celých čísel
    print(n.."! = ", product(range(1, n)))
end


-- finito
