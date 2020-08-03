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

-- tisk tabulky, jejíž prvky tvoří pole
function printTable(table)
    for key, values in pairs(table) do
        -- tisk klíče
        io.write(key .. ":\t")
        -- tisk hodnot
        printArrayInLine(values)
    end
end

-- oddělení obsahu
function printSeparator()
    print("--------------------------------------------")
end


-- pomocná funkce, která na základě hodnoty prvku vrátí návěští
function labelItem(x)
    if x % 2 == 0 then
        return "even"
    else
        return "odd"
    end
end


-- původní sekvence
a = range(10)

-- tisk původní sekvence
printSeparator()
print("original array")
printArrayInLine(a)
print()

-- rozdělení prvků v sekvenci podle návěští sudá/lichá
g = groupBy(a, labelItem)

-- tisk prvků rozdělených do skupin
printSeparator()
print("groupedBy odd/even")
printTable(g)


-- finito
