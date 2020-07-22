--[[

  Seriál "Programovací jazyk Lua"

  Demonstrační příklad k článku:
      Lua Fun: knihovna pro zpracování konečných i nekonečných sekvencí v jazyce Lua

]]


-- načtení knihovny Lua Fun a současně import symbolů do globálního jmenného prostoru
require "fun"()


-- pomocná funkce pro tisk několika prvků zazipované konečné sekvence
function printZippedSequence(sequence)
    for index, a, b, c in iter(sequence) do
        print(index, a, b, c)
    end
end


-- inicializovat generátor celých čísel
g = range(1, 20, 1)

-- opakující se sekvence dvou slov
c1 = cycle({"liché", "sudé"})

-- opakující se sekvence tří slov
c2 = cycle({"", "", "a dělitelné třemi"})

-- vytvoření zipu z obou sekvencí
z = zip(g, c1, c2)

-- s tiskem výsledku
printZippedSequence(z)



-- finito
