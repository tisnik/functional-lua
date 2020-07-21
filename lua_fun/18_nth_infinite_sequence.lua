--[[

  Seriál "Programovací jazyk Lua"

  Demonstrační příklad k článku:
      Lua Fun: knihovna pro zpracování konečných i nekonečných sekvencí v jazyce Lua

]]


-- načtení knihovny Lua Fun a současně import symbolů do globálního jmenného prostoru
require "fun"()


-- generátor nul
print("zeros()")
g = zeros()


-- pokus o přístup k prvkům sekvence
print("10th item:", nth(10, g))
print("1000th item:", nth(1000, g))
print("5th item:", nth(5, g))


-- generátor pseudonáhodných čísel
print()
print("rands(100, 200)")
g = rands(100, 200)


-- pokus o přístup k prvkům sekvence
print("10th item:", nth(10, g))
print("1000th item:", nth(1000, g))
print("5th item:", nth(5, g))


-- generátor stejných řetězců
print()
print("xrepeat('*')")
g = xrepeat("*")


-- pokus o přístup k prvkům sekvence
print("10th item:", nth(10, g))
print("1000th item:", nth(1000, g))
print("5th item:", nth(5, g))


-- generátor druhých mocnin přirozených čísel
print()
print("tabulate()")
g = tabulate(function(x) return (x+1)*(x+1) end)


-- pokus o přístup k prvkům sekvence
print("10th item:", nth(10, g))
print("1000th item:", nth(1000, g))
print("5th item:", nth(5, g))


-- finito
