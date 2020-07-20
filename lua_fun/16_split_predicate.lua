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
print("---------------------------------------------------")
printSequence(g)


print()
print("split(function(x) return x <= 5 end, sequence)")
print("---------------------------------------------------")
s1, s2 = split(function(x) return x <= 5 end, g)
printSequence(s1)
print("-- split --")
printSequence(s2)


print()
print("split(function(x) return true end, sequence)")
print("---------------------------------------------------")
s1, s2 = split(function(x) return true end, g)
printSequence(s1)
print("-- split --")
printSequence(s2)


print()
print("split(function(x) return nil end, sequence)")
print("---------------------------------------------------")
s1, s2 = split(function(x) return nil end, g)
printSequence(s1)
print("-- split --")
printSequence(s2)


-- finito
