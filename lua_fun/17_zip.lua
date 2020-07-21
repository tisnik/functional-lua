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


g1 = range(1, 10)
print("First original sequence")
print("---------------------------------------------------")
printSequence(g1)


g2 = take_n(10, xrepeat("*"))
print()
print("Second original sequence")
print("---------------------------------------------------")
printSequence(g2)


z1 = zip(g1, g2)
print()
print("Zipped sequence")
print("---------------------------------------------------")
for _, a, b in iter(z1) do
    print(a, b)
end


g3 = xrepeat(-1)
print()
print("Third original sequence (sliced)")
print("---------------------------------------------------")
printSequence(take_n(10, g3))


z2 = zip(g1, g2, g3)
print()
print("Zipped sequence")
print("---------------------------------------------------")
for _, a, b, c in iter(z2) do
    print(a, b, c)
end


-- finito
