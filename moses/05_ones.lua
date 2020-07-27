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

-- pole s jedničkami
a1 = ones(10)
printSeparator()
print("ones(10)")
printArray(a1)

-- pole s jedním prvkem
a2 = ones(1)
printSeparator()
print("ones(1)")
printArray(a2)

-- prázdné pole s jedničkami
a3 = ones(0)
printSeparator()
print("ones(0)")
printArray(a3)

-- pole s jedničkami
a4 = ones(-1)
printSeparator()
print("ones(-1)")
printArray(a4)


-- finito
