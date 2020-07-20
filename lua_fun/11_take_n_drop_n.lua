--[[

  Seriál "Programovací jazyk Lua"

  Demonstrační příklad k článku:
      Lua Fun: knihovna pro zpracování konečných i nekonečných sekvencí v jazyce Lua

]]


-- načtení knihovny Lua Fun a současně import symbolů do globálního jmenného prostoru
require "fun"()


-- pomocná funkce pro tisk několika prvků nekonečné sekvence
function printSequence(sequence)
    for _, value in iter(sequence) do
        print(value)
    end
end


g = range(1, 10)
print("Original sequence")
print("----------------------")
printSequence(g)


print()
print("take_n(5, sequence)")
print("----------------------")
printSequence(take_n(5, g))


print()
print("take_n(100, sequence)")
print("----------------------")
printSequence(take_n(100, g))


print()
print("take_n(0, sequence)")
print("----------------------")
printSequence(take_n(0, g))


print()
print("drop_n(5, sequence)")
print("----------------------")
printSequence(drop_n(5, g))


print()
print("drop_n(100, sequence)")
print("----------------------")
printSequence(drop_n(100, g))


print()
print("drop_n(0, sequence)")
print("----------------------")
printSequence(drop_n(0, g))


-- finito
