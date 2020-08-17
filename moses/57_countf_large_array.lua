--[[

  Seriál "Programovací jazyk Lua"

  Demonstrační příklad k článku:
      Podpora funkcionálního programovaní v jazyku Lua s využitím knihovny Moses

]]


-- načtení knihovny Moses a současně import symbolů do globálního jmenného prostoru
M = require "moses"
M.import()

-- vytvoření a naplnění pole o sto tisících prvcích
a={}
for i = 1, 100000 do
    -- náhodná hodnota v rozsahu 1 až 10
    a[i] = math.random(10)
end

for i = 1, 11 do
    print("<" .. i .. "\t" .. countf(a, function(x) return x < i end))
end


-- finito
