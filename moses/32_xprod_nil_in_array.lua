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


-- získaní textové podoby obsahu pole obsahujícího další vnořená pole
function nestedArray(array)
    if type(array) == 'table' then
        -- použít LISPovské s-výrazy
        local s = '('
        for i, v in ipairs(array) do
            -- oddělovač
            if i > 1 then
                s = s .. ' '
            end
            -- pole mohou být vnořena
            s = s .. nestedArray(v)
        end
        return s .. ')'
    else
        return tostring(array)
    end
end


-- oddělení obsahu
function printSeparator()
    print("--------------------------------------------")
end


a = range(10)
b = {"a", "b", nil, "c"}
p = xprod(a, b)

printSeparator()
print("first original array")
printArrayInLine(a)
print()
print("second original array")
printArrayInLine(b)
print()
print("generated pairs")
print(nestedArray(p))


-- finito
