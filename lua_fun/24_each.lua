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
g1 = tabulate(my_generator)

-- další generátor nekonečné sekvence 
g2 = xrepeat("*")

-- třetí generátor nekonečné sekvence
g3 = zeros()

-- vytvoření zipu ze tří sekvencí
z1 = zip(g1, g2, g3)

-- získání prvních deseti prvků z původně nekonečné sekvence
t = take_n(10, z1)

-- výstup na terminál
print()
print("Zipped sequence (first ten items from infinite sequnce)")
print("-------------------------------------------------------")
printSequence(t)


-- finito
