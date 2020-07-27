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


a = {}
printSeparator()
print("original array")
printArrayInLine(a)

printSeparator()
print("after push('a')")
push(a, "a")
printArrayInLine(a)

printSeparator()
print("after push('b')")
push(a, "b")
printArrayInLine(a)

printSeparator()
print("after push('c')")
push(a, "c")
printArrayInLine(a)

for i = 1, 5 do
    printSeparator()
    item = pop(a)
    print("poped item:", item)
    print("after pop()")
    printArrayInLine(a)
end


-- finito
