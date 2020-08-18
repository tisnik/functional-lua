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

-- vytištění permutací původního pole o různé délce
for length = 1, 5 do
    -- vytvoření a naplnění pole o n prvcích
    a=range(length)
    print("Original array")
    printArrayInLine(a)

    -- tisk všech možných perutací pole
    print("Permutation for array with length " .. length)
    cnt = 0
    for permutation in permutation(a) do
        printArrayInLine(permutation)
        cnt = cnt + 1
    end
    print("Permutations: " .. cnt)
    print()
end


-- finito
