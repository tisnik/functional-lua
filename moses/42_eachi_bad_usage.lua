--[[

  Seriál "Programovací jazyk Lua"

  Demonstrační příklad k článku:
      Podpora funkcionálního programovaní v jazyku Lua s využitím knihovny Moses

]]


-- načtení knihovny Moses a současně import symbolů do globálního jmenného prostoru
M = require "moses"
M.import()


-- tisk tabulky, jejíž prvky tvoří pole
function printTable(table)
    -- tisk tabulky funkcí eachi
    eachi(table, function(values, key)
            -- tisk klíče
            io.write(key .. ":\t")
            -- tisk hodnot
            eachi(values, function (value) io.write(tostring(value) .. " ") end)
            print()
        end
    )
end

-- oddělení obsahu
function printSeparator()
    print("--------------------------------------------")
end


-- původní sekvence
a = {1, 2, 3, 4, "a", "b", "c", nil, true, false, 42, function () end, print}

-- tisk původní sekvence funkcí eachi
printSeparator()
print("original array")
eachi(a, function(value, index) print(value) end)
print()

-- rozdělení prvků v sekvenci podle jejich typu
g = groupBy(a, type)

printSeparator()
print("groupedBy type")
printTable(g)


-- finito
