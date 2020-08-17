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
    -- test na prázdné pole
    if #array == 0 then
        print("*empty*")
        return
    end
    for i, value in ipairs(array) do
        print(value)
    end
    print()
end

-- oddělení obsahu
function printSeparator()
    print("--------------------------------------------")
end

-- vytvoření a naplnění pole o deseti prvcích
a={}
for i = 1, 10 do
    a[i] = 1.0 / i
end

-- vytištění původního pole
printSeparator()
print("Original array")
printArray(a)

printSeparator()
print("Interposed array")
b = interpose(a, 0)
printArray(b)


-- finito
