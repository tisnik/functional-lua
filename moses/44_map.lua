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


-- výpočet faktoriálu vstupních hodnot 1 až 10
n = range(1, 10)

-- pomocné pole se sekvencí
r = map(n, function (n) return range(1, n) end)

-- tisk tabulky tabulek pro ladicí účely
each(r, printArrayInLine)

-- výpočet produktu hodnot 1..n == n!
f = map(r, product)

-- tisk výsledků funkcí each
each(f, function(x,y) print(y,x) end)


-- finito
