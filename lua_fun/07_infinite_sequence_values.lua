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


print("zeros()")
print("-----------------------------------")
printSequence(zeros(), 10)

print()
print("ones()")
print("-----------------------------------")
printSequence(ones(), 10)

print()
print("xrepeat(42)")
print("-----------------------------------")
printSequence(xrepeat(42), 10)

print()
print("xrepeat('hello')")
print("-----------------------------------")
printSequence(xrepeat('hello'), 10)

print()
print("xrepeat(nil)")
print("-----------------------------------")
printSequence(xrepeat(nil), 10)

print()
print("duplicate(42)")
print("-----------------------------------")
printSequence(duplicate(42), 10)

print()
print("duplicate('hello')")
print("-----------------------------------")
printSequence(duplicate('hello'), 10)

print()
print("duplicate(nil)")
print("-----------------------------------")
printSequence(duplicate(nil), 10)

print()
print("tabulate(function(x) return x*x end))")
print("-----------------------------------")
printSequence(tabulate(function(x) return x*x end), 10)


-- finito
