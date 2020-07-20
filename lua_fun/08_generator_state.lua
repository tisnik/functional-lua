--[[

  Seriál "Programovací jazyk Lua"

  Demonstrační příklad k článku:
      Lua Fun: knihovna pro zpracování konečných i nekonečných sekvencí v jazyce Lua

]]


-- načtení knihovny Lua Fun a současně import symbolů do globálního jmenného prostoru
require "fun"()


-- pomocná funkce pro tisk několika prvků nekonečné sekvence
function printSequence(sequence, n)
    i = 0
    for index, value in iter(sequence) do
        i = i + 1
        if i > n then
            break
        end
        print(index, value)
    end
end


print("range()")
print("-----------------------------------")
g = range(1, 100, 2)
print(g.gen, g.param, g.state)
printSequence(g, 10)
print(g.gen, g.param, g.state)


print()
print("zeros()")
print("-----------------------------------")
g = zeros()
print(g.gen, g.param, g.state)
printSequence(g, 10)
print(g.gen, g.param, g.state)


print()
print("ones()")
print("-----------------------------------")
g = ones()
print(g.gen, g.param, g.state)
printSequence(g, 10)
print(g.gen, g.param, g.state)


print()
print("xrepeat(42)")
print("-----------------------------------")
g = xrepeat(42)
print(g.gen, g.param, g.state)
printSequence(g, 10)
print(g.gen, g.param, g.state)


print()
print("tabulate(function(x) return x*x end))")
print("-----------------------------------")
g = tabulate(function(x) return x*x end)
print(g.gen, g.param, g.state)
printSequence(g, 10)
print(g.gen, g.param, g.state)


-- finito
