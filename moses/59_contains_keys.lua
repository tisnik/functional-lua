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
c["Leden"] = 0
c["Únor"] = nil
c["Březen"] = 0
c["Duben"] = 100
c["Květen"] = 0
c["Červen"] = 0
c["Červenec"] = 60
c["Srpen"] = 70
c["Září"] = nil
c["Říjen"] = 0
c["Listopad"] = 90
c["Prosinec"] = 10

printSeparator()
printTable(a)
printSeparator()
printTable(b)
printSeparator()
printTable(c)
printSeparator()

print("containsKeys(a, b):", containsKeys(a, b))
print("containsKeys(b, a):", containsKeys(b, a))
print()

print("containsKeys(a, c):", containsKeys(a, c))
print("containsKeys(c, a):", containsKeys(c, a))

-- finito
