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

-- vytvoření a naplnění pole o dvanácti prvcích
a={"Leden",
   "Únor",
   "Březen",
   "Duben",
   "Květen",
   "Červen",
   "Červenec",
   "Srpen",
   "Září",
   "Říjen",
   "Listopad",
   "Prosinec"}

-- vytištění prvního původního pole
printSeparator()
print("Original array")
printArray(a)

-- reorganizace prvků pole
printSeparator()
print("Shuffled array")
printArray(shuffle(a))


-- finito
