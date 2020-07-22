--[[

  Seriál "Programovací jazyk Lua"

  Demonstrační příklad k článku:
      Lua Fun: knihovna pro zpracování konečných i nekonečných sekvencí v jazyce Lua

]]


-- načtení knihovny Lua Fun a současně import symbolů do globálního jmenného prostoru
require "fun"()


-- pomocná funkce pro tisk několika prvků nekonečné sekvence
function printSequence(sequence, n)
    i = 0
    for index, value in iter(sequence) do
        i = i + 1
        if i > n then
            break
        end
        print(index, value)
    end
end


-- inicializovat generátor celých čísel
g = range(2, 10, 2)


print("original sequence")
print("---------------------------")
printSequence(g, 20)

c = cycle(g)
print()
print("cycles of original sequence")
print("---------------------------")
printSequence(c, 20)


-- finito
