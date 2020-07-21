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


-- vlastní generátor
function my_generator(x)
    print("(iter)", x)
    return (x+1)*(x+1)
end


-- inicializovat vlastní generátor
g = tabulate(my_generator)


-- první podsekvence
print()
print("take_n(5, sequence)")
print("----------------------")
t5 = take_n(5, g)
print("done\n")
printSequence(t5)


-- druhá podsekvence
print()
print("take_n(10, sequence)")
print("----------------------")
t10 = take_n(10, g)
print("done\n")
printSequence(t10)


-- třetí podsekvence
print()
print("take_n(0, sequence)")
print("----------------------")
t0 = take_n(0, g)
print("done\n")
printSequence(t0)


-- finito
