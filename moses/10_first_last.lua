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


-- funkce first
printSeparator()
print("first(s)")
printArray(first(s))


-- funkce first s udáním počtu prvků
printSeparator()
print("first(s, 5)")
printArray(first(s, 5))


-- funkce first s udáním nulového počtu prvků
printSeparator()
print("first(s, 0)")
printArray(first(s, 0))


-- funkce last
printSeparator()
print("last(s)")
printArray(last(s))


-- funkce last s udáním počtu prvků
printSeparator()
print("last(s, 5)")
printArray(last(s, 5))


-- funkce last s udáním nulového počtu prvků
printSeparator()
print("last(s, 0)")
printArray(last(s, 0))


-- finito
