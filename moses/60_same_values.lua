--[[

  Seriál "Programovací jazyk Lua"

  Demonstrační příklad k článku:
      Podpora funkcionálního programovaní v jazyku Lua s využitím knihovny Moses

]]


-- načtení knihovny Moses a současně import symbolů do globálního jmenného prostoru
M = require "moses"
M.import()

-- tisk tabulky
function printTable(table)
    for key, value in pairs(table) do
        print(key, value)
    end
end

-- oddělení obsahu
function printSeparator()
    print("--------------------------------------------")
end

-- vytvoření a naplnění první tabulky
a={}
a["Leden"] = 10
a["Únor"] = 20
a["Březen"] = 30
a["Duben"] = 0
a["Květen"] = 40
a["Červen"] = 50
a["Červenec"] = 60
a["Srpen"] = 0
a["Září"] = 70
a["Říjen"] = 80
a["Listopad"] = 90
a["Prosinec"] = 100

-- vytvoření a naplnění druhé tabulky
b={}
b["Leden"] = 0
b["Únor"] = 0
b["Březen"] = 0
b["Duben"] = 100
b["Květen"] = 0
b["Červen"] = 0
b["Červenec"] = 60
b["Srpen"] = 70
b["Září"] = 0
b["Říjen"] = 0
b["Listopad"] = 90
b["Prosinec"] = 10

-- vytvoření a naplnění třetí tabulky
c={}
c["a"] = 0
c["b"] = 0
c["c"] = 0
c["d"] = 100
c["e"] = 0
c["f"] = 0
c["g"] = 60
c["h"] = 70
c["i"] = 0
c["j"] = 0
c["k"] = 90
c["l"] = 10

printSeparator()
printTable(a)
printSeparator()
printTable(b)
printSeparator()
printTable(c)
printSeparator()

print("same(a, b):", same(a, b))
print("same(b, a):", same(b, a))
print()

print("same(b, c):", same(b, c))
print("same(c, b):", same(c, b))

-- finito
