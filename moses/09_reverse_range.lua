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


-- prázdné pole při neuvedení rozsahu
a0 = reverse(range())
printSeparator()
print("reverse(range())")
printArray(a0)


-- první pole začínající standardně od jedničky
a1 = reverse(range(10))
printSeparator()
print("reverse(range(10))")
printArray(a1)


-- druhé pole s explicitní specifikací hodnoty prvního prvku
a2 = reverse(range(1, 10))
printSeparator()
print("reverse(range(1, 10))")
printArray(a2)


-- třetí pole se specifikací kroku (rozdílu mezi dvěma prvky)
a3 = reverse(range(1, 10, 2))
printSeparator()
print("reverse(range(1, 10, 2))")
printArray(a3)


-- čtvrté pole s prvky počítanými pozpátku
a4 = reverse(range(10, 1))
printSeparator()
print("reverse(range(10, 1))")
printArray(a4)


-- páté pole počítané pozpátku s kladným krokem
a5 = reverse(range(10, 1, 2))
printSeparator()
print("reverse(range(10, 1, 2))")
printArray(a5)


-- šesté pole počítané pozpátku se záporným krokem
a6 = reverse(range(10, 1, -2))
printSeparator()
print("reverse(range(10, 1, -2))")
printArray(a6)


-- sedmé pole s neceločíselným krokem
a7 = reverse(range(1, 5, 0.5))
printSeparator()
print("reverse(range(10, 5, 0.5))")
printArray(a7)


-- osmé pole s neceločíselným krokem a počáteční hodnotou typu double
a8 = reverse(range(1.0, 5, 0.5))
printSeparator()
print("reverse(range(10, 5, 0.5))")
printArray(a8)


-- deváté pole testující vliv problematické hodnoty 0.1
a9 = reverse(range(0, 1, 0.1))
printSeparator()
print("reverse(range(0, 1, 0.1))")
printArray(a9)


-- desáté pole s počáteční hodnotou typu double
a10 = reverse(range(0.0, 1, 0.1))
printSeparator()
print("reverse(range(0.0, 1, 0.1))")
printArray(a9)



-- finito
