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
    for key, values in pairs(table) do
        -- tisk klíče
        io.write(key .. ":\t")
        -- tisk hodnot
        each(values, function (value) io.write(tostring(value) .. " ") end)
        print()
    end
end

-- oddělení obsahu
function printSeparator()
    print("--------------------------------------------")
end


-- původní sekvence
a = {1, 2, 3, 4, "a", "b", "c", nil, true, false, 42, function () end, print}

-- tisk původní sekvence funkcí each
printSeparator()
print("original array")
each(a, function(value, index) print(value) end)
print()

-- rozdělení prvků v sekvenci podle jejich typu
g = groupBy(a, type)

-- tisk prvků rozdělených do skupin podle jejich typu
printSeparator()
print("groupedBy type")
printTable(g)


-- finito
