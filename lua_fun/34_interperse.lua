--[[

  Seriál "Programovací jazyk Lua"

  Demonstrační příklad k článku:
      Lua Fun: knihovna pro zpracování konečných i nekonečných sekvencí v jazyce Lua

]]


-- načtení knihovny Lua Fun a současně import symbolů do globálního jmenného prostoru
require "fun"()


-- pomocná funkce pro tisk několika prvků konečné sekvence
function printSequence(sequence)
    for _, x in iter(sequence) do
        print(x)
    end
end


-- inicializovat generátor celých čísel
g1 = range(1, 10, 1)

g2 = intersperse("---------------------", g1)

print()
print("interspersed sequence")
print("---------------------")
printSequence(g2)


-- finito
