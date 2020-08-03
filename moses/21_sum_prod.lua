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
    -- test na prázdné pole
    if #array == 0 then
        print("*empty*")
        return
    end
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


-- první vstupní pole obsahuje sekvenci čísel 1 až 10
a = range(10)

printSeparator()
print("Original array")
printArrayInLine(a)
print()

-- tisk součtu (sumace) a součinu všech hodnot v poli
print("Sum=" .. sum(a))
print("Product=" .. product(a))

print()

-- druhé vstupní pole obsahuje sekvenci čísel 0 až 10
b = range(0, 10)

printSeparator()
print("Original array")
printArrayInLine(b)
print()

-- tisk součtu (sumace) a součinu všech hodnot v poli
print("Sum=" .. sum(b))
print("Product=" .. product(b))



-- finito
