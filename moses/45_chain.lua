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


-- první pole začínající standardně od jedničky
-- je ihned po konstrukci otočeno
a1 = M.chain(range(10)):reverse():value()
printSeparator()
print("reverse(range(10))")
printArray(a1)


-- nyní zkusíme zřetězit více operací
a2 = M.chain(range(10)):filter(function (x) return x%2==0 end):reverse():value()
printSeparator()
print("reverse(filter(range(10)))")
printArray(a2)



-- finito
