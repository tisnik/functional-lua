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

-- pole s nulami
a1 = zeros(10)
printSeparator()
print("zeros(10)")
printArray(a1)

-- pole s jedním prvkem
a2 = zeros(1)
printSeparator()
print("zeros(1)")
printArray(a2)

-- prázdné pole s nulami
a3 = zeros(0)
printSeparator()
print("zeros(0)")
printArray(a3)

-- pole s nulami
a4 = zeros(-1)
printSeparator()
print("zeros(-1)")
printArray(a4)


-- finito
