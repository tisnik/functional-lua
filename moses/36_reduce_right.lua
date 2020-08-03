--[[

  Seriál "Programovací jazyk Lua"

  Demonstrační příklad k článku:
      Podpora funkcionálního programovaní v jazyku Lua s využitím knihovny Moses

]]


-- načtení knihovny Moses a současně import symbolů do globálního jmenného prostoru
M = require "moses"
M.import()


-- vstupní pole
a = range(10)

-- postupné zpracování prvků pole zleva s akumulací výsledku
print("reduceLeft")
print(reduce(a, function (x, y) return tostring(x) .. " " .. tostring(y) end))

print()

-- postupné zpracování prvků pole zprava s akumulací výsledku
print("reduceRight")
print(reduceRight(a, function (x, y) return tostring(x) .. " " .. tostring(y) end))


-- finito
