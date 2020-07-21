--[[

  Seriál "Programovací jazyk Lua"

  Demonstrační příklad k článku:
      Lua Fun: knihovna pro zpracování konečných i nekonečných sekvencí v jazyce Lua

]]


-- načtení knihovny Lua Fun a současně import symbolů do globálního jmenného prostoru
require "fun"()


-- pomocná funkce pro tisk prvků konečné sekvence
function printSequence(sequence)
    for _, value in iter(sequence) do
        print(value)
    end
end


g = range(1, 10)
print("Original sequence")
print("---------------------------------------------------")
printSequence(g)


print()
print("split(5, sequence)")
print("---------------------------------------------------")
s1, s2 = split(5, g)
printSequence(s1)
print("-- split --")
printSequence(s2)


print()
print("split(0, sequence)")
print("---------------------------------------------------")
s1, s2 = split(0, g)
printSequence(s1)
print("-- split --")
printSequence(s2)


print()
print("split(100, sequence)")
print("---------------------------------------------------")
s1, s2 = split(100, g)
printSequence(s1)
print("-- split --")
printSequence(s2)


-- finito
