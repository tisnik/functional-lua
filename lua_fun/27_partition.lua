--[[

  Seriál "Programovací jazyk Lua"

  Demonstrační příklad k článku:
      Lua Fun: knihovna pro zpracování konečných i nekonečných sekvencí v jazyce Lua

]]


-- načtení knihovny Lua Fun a současně import symbolů do globálního jmenného prostoru
require "fun"()


-- pomocná funkce pro tisk prvků konečné sekvence
function printSequence(sequence)
    each(print, sequence)
end


-- vlastní generátor
function my_generator(x)
    return (x+1)*(x+1)
end


-- inicializovat vlastní generátor
g = tabulate(my_generator)


-- první podsekvence
print()
print("take_n(10, sequence)")
print("----------------------")
t10 = take_n(10, g)
printSequence(t10)


-- provést filtraci
f1, f2 = partition(function(x) return x % 2 == 0 end, g)
print()
print("even results")
print("----------------------")
t5 = take_n(5, f1)
printSequence(t5)


-- (filtrace uz byla provedena)
print()
print("odd results")
print("----------------------")
t5 = take_n(5, f2)
printSequence(t5)


-- finito
