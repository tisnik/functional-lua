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
a={"Leden",
   "Únor",
   "Březen",
   "Duben"}

-- vytištění původního pole
printSeparator()
print("Original array #1")
printArrayInLine(a)

-- vytištění permutací původního pole
printSeparator()
print("Permutations")

for permutation in permutation(a) do
    printArrayInLine(permutation)
end


-- finito
