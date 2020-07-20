--[[

  Seriál "Programovací jazyk Lua"

  Demonstrační příklad k článku:
      Lua Fun: knihovna pro zpracování konečných i nekonečných sekvencí v jazyce Lua

]]


-- načtení knihovny Lua Fun a současně import symbolů do globálního jmenného prostoru
require "fun"()


-- pomocná funkce pro tisk konečné sekvence
function printSequence(sequence)
    for index, value in iter(sequence) do
        print(index, value)
    end
end


print("range(10)")
print("--------------------")

-- tisk obsahu sekvence
printSequence(range(10))


print()
print("range(-10)")
print("--------------------")

-- specifikace začátku sekvence
printSequence(range(-10))


print()
print("range(0, 10)")
print("--------------------")

-- specifikace začátku sekvence
printSequence(range(0, 10))


print()
print("range(0, 10, 2)")
print("--------------------")

-- specifikace začátku sekvence i kroku
printSequence(range(0, 10, 2))


print()
print("range(10, 0)")
print("--------------------")

-- počítání zpět
printSequence(range(10, 0))


print()
print("range(10, 0, -2)")
print("--------------------")

-- počítání zpět s krokem
printSequence(range(10, 0, -2))


print()
print("range(0.5, 10, 0.5)")
print("--------------------")

-- počítání s neceločíselnými hodnotami
printSequence(range(0.5, 10, 0.5))


print()
print("range(0.0, 1.0, 0.1)")
print("--------------------")

-- počítání s neceločíselnými hodnotami
printSequence(range(0.0, 1.0, 0.1))


print()
print("range(0, 10, 0)")
print("--------------------")

-- pokus o použití nulového kroku
printSequence(range(0, 10, 0))


-- finito
