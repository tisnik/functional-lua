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

-- vytvoření a naplnění pole o čtyřech prvcích
a=range(4)

-- vytištění původního pole
printSeparator()
print("Original array #1")
printArrayInLine(a)

-- vytištění potenční množiny původního pole
printSeparator()
print("Powerset")
p = powerset(a)

for _, p in ipairs(powerset(a)) do
    printArrayInLine(p)
end


-- finito
