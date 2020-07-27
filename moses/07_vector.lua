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
    for index, value in ipairs(array) do
        print(index, value)
    end
end


-- oddělení obsahu
function printSeparator()
    print("-------------------------------")
end

-- pole s opakující se hodnotou
a1 = vector("*", 10)
printSeparator()
print("vector('*', 10)")
printArray(a1)

-- pole s jedinou hodnotou
a2 = vector("*", 1)
printSeparator()
print("vector('*', 1)")
printArray(a2)

-- prázdné pole s opakující se hodnotou
a3 = vector("*", 0)
printSeparator()
print("vector('*', 0)")
printArray(a3)

-- pole s opakující se hodnotou
a4 = vector("*", -1)
printSeparator()
print("vector('*', -1)")
printArray(a5)


-- finito
