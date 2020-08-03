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

-- prázdné vstupní pole
a={}

-- vytištění původního pole
printSeparator()
print("Original array")
printArrayInLine(a)

-- výpočet a tisk základních statistických veličin
print()
print("Mean:   " .. mean(a))
print("Median: " .. (median(a) or "nil"))
print("Min:    " .. (min(a) or "nil"))
print("Max:    " .. (max(a) or "nil"))



-- finito
