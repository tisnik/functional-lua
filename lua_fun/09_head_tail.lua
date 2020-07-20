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


print("range(10)")
print("-----------------------------------")
g = range(10)
printSequence(g, 10)


print()
print("head(range(10))")
print("-----------------------------------")
print(head(g))


print()
print("tail(range(10))")
print("-----------------------------------")
t = tail(g)
printSequence(t, 10)


print()
print("tail(tail(range(10)))")
print("-----------------------------------")
t = tail(tail(g))
printSequence(t, 10)


print()
print("head(range(1))")
print("-----------------------------------")
g = range(1)
print(head(g))


print()
print("tail(range(1))")
print("-----------------------------------")
t = tail(g)
printSequence(t, 1)


print()
print("tail(tail(range(1)))")
print("-----------------------------------")
t = tail(tail(g))
printSequence(t, 1)


-- finito
