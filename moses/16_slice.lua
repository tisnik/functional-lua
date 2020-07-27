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


a = range(10)

printSeparator()
print("Original array")
printArrayInLine(a)

printSeparator()
print("slice(a)")
printArrayInLine(slice(a))

printSeparator()
print("slice(a, 5)")
printArrayInLine(slice(a, 5))

printSeparator()
print("slice(a, 5, 5)")
printArrayInLine(slice(a, 5, 5))

printSeparator()
print("slice(a, 4, 8)")
printArrayInLine(slice(a, 4, 8))

printSeparator()
print("slice(a, 0, 100)")
printArrayInLine(slice(a, 0, 100))

printSeparator()
print("slice(a, 100, 0)")
printArrayInLine(slice(a, 100, 0))


-- finito
