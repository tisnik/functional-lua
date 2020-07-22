--[[

  Seriál "Programovací jazyk Lua"

  Demonstrační příklad k článku:
      Lua Fun: knihovna pro zpracování konečných i nekonečných sekvencí v jazyce Lua

]]


-- načtení knihovny Lua Fun a současně import symbolů do globálního jmenného prostoru
require "fun"()


-- pomocná funkce pro tisk několika prvků zazipované konečné sekvence
function printZippedSequence(sequence)
    for index, a, b in iter(sequence) do
        print(index, a, b)
    end
end


-- inicializovat generátor celých čísel
g = range(1, 20, 1)

-- opakující se sekvence dvou slov
c = cycle({"liché", "sudé"})

-- vytvoření zipu z obou sekvencí
z = zip(g, c)

-- s tiskem výsledku
printZippedSequence(z)



-- finito
