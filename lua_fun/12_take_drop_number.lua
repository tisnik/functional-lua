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
print("take(5, sequence)")
print("----------------------")
printSequence(take(5, g))


print()
print("take(100, sequence)")
print("----------------------")
printSequence(take(100, g))


print()
print("take(0, sequence)")
print("----------------------")
printSequence(take(0, g))


print()
print("drop(5, sequence)")
print("----------------------")
printSequence(drop(5, g))


print()
print("drop(100, sequence)")
print("----------------------")
printSequence(drop(100, g))


print()
print("drop(0, sequence)")
print("----------------------")
printSequence(drop(0, g))


-- finito
