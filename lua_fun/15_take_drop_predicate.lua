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
print("take(function(x) return x <= 5 end, sequence)")
print("---------------------------------------------------")
printSequence(take(function(x) return x <= 5 end, g))


print()
print("take(function(x) return true end, sequence)")
print("---------------------------------------------------")
printSequence(take(function(x) return true end, g))


print()
print("take(function(x) return nil end, sequence)")
print("---------------------------------------------------")
printSequence(take(function(x) return nil end, g))


print()
print("drop(function(x) return x <= 5 end, sequence)")
print("---------------------------------------------------")
printSequence(drop(function(x) return x <= 5 end, g))


print()
print("drop(function(x) return true end, sequence)")
print("---------------------------------------------------")
printSequence(drop(function(x) return true end, g))


print()
print("drop(function(x) return nil end, sequence)")
print("---------------------------------------------------")
printSequence(drop(function(x) return nil end, g))


-- finito
