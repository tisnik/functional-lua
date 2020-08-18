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

printSeparator()

-- vytištění potenční množiny původního pole o různé délce
for length = 0, 4 do
    -- vytvoření a naplnění pole o n prvcích
    if length == 0 then
        a = {}
    else
        a=range(length)
    end

    print("Original array")
    printArrayInLine(a)
    print()

    -- tisk potenční množiny pole
    print("Powerset")
    p = powerset(a)

    for _, p in ipairs(p) do
        printArrayInLine(p)
    end
    print()
    print("# of items: " .. #p)
    printSeparator()
end


-- finito
