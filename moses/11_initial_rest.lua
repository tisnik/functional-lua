--[[

  Seriál "Programovací jazyk Lua"

  Demonstrační příklad k článku:
      Podpora funkcionálního programovaní v jazyku Lua s využitím knihovny Moses

]]


-- načtení knihovny Moses a současně import symbolů do globálního jmenného prostoru
M = require "moses"
M.import()


-- tisk obsahu pole
function printArray(array)
    for index, value in ipairs(array) do
        print(index, value)
    end
end


-- oddělení obsahu
function printSeparator()
    print("-------------------------------")
end


-- vstupní pole
s = range(12)
printSeparator()
print("original array")
printArray(s)


-- funkce initial
printSeparator()
print("initial(s)")
printArray(initial(s))


-- funkce initial s udáním počtu prvků
printSeparator()
print("initial(s, 5)")
printArray(initial(s, 5))


-- funkce initial s udáním nulového počtu prvků
printSeparator()
print("initial(s, 0)")
printArray(initial(s, 0))


-- funkce rest
printSeparator()
print("rest(s)")
printArray(rest(s))


-- funkce rest s udáním počtu prvků
printSeparator()
print("rest(s, 5)")
printArray(rest(s, 5))


-- funkce rest s udáním nulového počtu prvků
printSeparator()
print("rest(s, 0)")
printArray(rest(s, 0))


-- finito
