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
        io.write(tostring(value))
        if i ~= #array then
            io.write(", ")
        end
    end
    print()
end


-- oddělení obsahu
function printSeparator()
    print("--------------------------------------------")
end


-- tisk původního pole i pole "kompaktního"
function printCompacedArray(a)
    printSeparator()
    print("original array")
    printArrayInLine(a)
    print("compacted array")
    printArrayInLine(compact(a))
    print()
end


printCompacedArray({})
printCompacedArray({1, 2, 3, 4})
printCompacedArray(zeros(10))
printCompacedArray({true, false, true, false, true, false})
printCompacedArray({"foo", nil, "bar", nil, nil, "baz", nil, nil, nil})



-- finito
