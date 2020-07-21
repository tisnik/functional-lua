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

-- pokus o přístup k prvkům sekvence

print()
print("getting 9th item")
g9 = nth(9, g)

print()
print("getting 10th item")
g10 = nth(10, g)

print()
print("getting 5th item")
g5 = nth(5, g)

print()
print("9th item:", g9)
print("10th item:", g10)
print("5th item:", g5)


-- pokus o přístup k nultému prvku (který neexistuje)
print()
print("getting 0th item")
g0 = nth(0, g)


-- finito
