--[[

  Seriál "Programovací jazyk Lua"

  Demonstrační příklad k článku:
      Podpora funkcionálního programovaní v jazyku Lua s využitím knihovny Moses

]]


-- vytvoření dvou kontextů
context1 = {}
context2 = {}

-- načtení knihovny Moses
M = require "moses"

-- import funkcí do kontextů
M.import(context1)
M.import(context2)


-- pokus o použití funkce z knihovny Moses
print("M")
table = M.range(10, 1)
for index, value in ipairs(table) do
    print(index, value)
end

print()

-- nyní vyzkoušíme stejnou funkci, ovšem v prvním kontextu
print("context 1")
table = context1.range(10, 1)
for index, value in ipairs(table) do
    print(index, value)
end

print()

-- nyní vyzkoušíme stejnou funkci, ovšem ve druhém kontextu
print("context 2")
table = context2.range(10, 1)
for index, value in ipairs(table) do
    print(index, value)
end


-- finito
