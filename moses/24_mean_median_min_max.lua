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


-- vytvoření a naplnění pole o sto prvcích
a={}
for i = 1, 100 do
    -- náhodná hodnota v rozsahu 1 až 10
    a[i] = math.random(10)
end

-- vytištění původního pole
printSeparator()
print("Original array")
printArrayInLine(a)

-- výpočet a tisk základních statistických veličin
print()
print("Mean:   " .. mean(a))
print("Median: " .. median(a))
print("Min:    " .. min(a))
print("Max:    " .. max(a))



-- finito
