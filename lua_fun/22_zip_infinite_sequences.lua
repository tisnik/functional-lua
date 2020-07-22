--[[

  Seriál "Programovací jazyk Lua"

  Demonstrační příklad k článku:
      Lua Fun: knihovna pro zpracování konečných i nekonečných sekvencí v jazyce Lua

]]


-- načtení knihovny Lua Fun a současně import symbolů do globálního jmenného prostoru
require "fun"()


-- pomocná funkce pro tisk několika prvků nekonečné sekvence
function printZippedSequence(sequence, n)
    i = 0
    for index, a, b, c in iter(sequence) do
        i = i + 1
        if i > n then
            break
        end
        print(index, a, b, c)
    end
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
print()
print("Zipped sequence (first ten items from infinite sequence)")
print("--------------------------------------------------------")
printZippedSequence(z1, 10)


-- finito
