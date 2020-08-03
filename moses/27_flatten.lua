--[[

  Seriál "Programovací jazyk Lua"

  Demonstrační příklad k článku:
      Podpora funkcionálního programovaní v jazyku Lua s využitím knihovny Moses

]]


-- načtení knihovny Moses a současně import symbolů do globálního jmenného prostoru
M = require "moses"
M.import()


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



-- původní pole
a = {1, 2, 3, {4, 5, 6, {7, 8, 9}, {10, 11}}, 12}
printSeparator()

-- tisk původního pole
print("Original array")
print(nestedArray(a))
print()

-- tisk zploštělého pole
print("Flatten array")
print(nestedArray(flatten(a)))



-- původní pole
b = {"a", {"b", {"c", {"d", {"e", {"f", {"g"}}}}}}}
printSeparator()

-- tisk původního pole
print("Original array")
print(nestedArray(b))
print()

-- tisk zploštělého pole
print("Flatten array")
print(nestedArray(flatten(b)))



-- finito
