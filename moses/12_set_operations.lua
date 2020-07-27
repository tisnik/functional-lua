--[[

  Seriál "Programovací jazyk Lua"

  Demonstrační příklad k článku:
      Podpora funkcionálního programovaní v jazyku Lua s využitím knihovny Moses

]]


-- načtení knihovny Moses a současně import symbolů do globálního jmenného prostoru
M = require "moses"
M.import()


-- tisk obsahu pole
function printArrayInLine(array)
    for i, value in ipairs(array) do
        io.write(value)
        if i ~= #array then
            io.write(", ")
        end
    end
    print()
end


-- oddělení obsahu
function printSeparator()
    print("-------------------------------")
end


a1 = {1, 2, 3, 4}
a2 = {3, 4, 5, 6}

printSeparator()
print("a1")
printArrayInLine(a1)

printSeparator()
print("a2")
printArrayInLine(a2)

printSeparator()
print("union(a1, a2)")
printArrayInLine(union(a1, a2))

printSeparator()
print("intersection(a1, a2)")
printArrayInLine(intersection(a1, a2))

printSeparator()
print("difference(a1, a2)")
printArrayInLine(difference(a1, a2))

printSeparator()
print("difference(a2, a1)")
printArrayInLine(difference(a2, a1))

printSeparator()
print("symmetricDifference(a1, a2)")
printArrayInLine(symmetricDifference(a1, a2))

printSeparator()
print("symmetricDifference(a2, a1)")
printArrayInLine(symmetricDifference(a2, a1))


-- finito
