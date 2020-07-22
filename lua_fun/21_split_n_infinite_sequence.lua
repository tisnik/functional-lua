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


-- vlastní generátor
function my_generator(x)
    print("(iter)", x)
    return (x+1)*(x+1)
end


-- inicializovat vlastní generátor
g = tabulate(my_generator)


-- první dvojice podsekvencí
print()
print("split(5, sequence)")
print("----------------------")
s1, s2 = split(5, g)
print("done\n")
printSequence(s1)


-- druhá dvojice podsekvencí
print()
print("split(10, sequence)")
print("----------------------")
s1, s2 = split(10, g)
print("done\n")
printSequence(s1)


-- třetí dvojice podsekvencí
print()
print("split(0, sequence)")
print("----------------------")
s1, s2 = split(0, g)
print("done\n")
printSequence(s1)


-- finito
