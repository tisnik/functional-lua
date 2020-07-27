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
    print("--------------------------------------------")
end


a = range(10)
printSeparator()
print("Original array")
printArrayInLine(a)

printSeparator()
print("dropWhile(a, function (x) return x<=5 end)")
printArrayInLine(dropWhile(a, function (x) return x<=5 end))

printSeparator()
print("dropWhile(a, function (x) return x%2 == 1 end)")
printArrayInLine(dropWhile(a, function (x) return x%2 == 1 end))

printSeparator()
print("dropWhile(a, function (x) return true end)")
printArrayInLine(dropWhile(a, function (x) return true end))

printSeparator()
print("dropWhile(a, function (x) return false end)")
printArrayInLine(dropWhile(a, function (x) return false end))



-- finito
