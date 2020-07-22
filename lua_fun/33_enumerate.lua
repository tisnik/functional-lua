--[[

  Seriál "Programovací jazyk Lua"

  Demonstrační příklad k článku:
      Lua Fun: knihovna pro zpracování konečných i nekonečných sekvencí v jazyce Lua

]]


-- načtení knihovny Lua Fun a současně import symbolů do globálního jmenného prostoru
require "fun"()


-- pomocná funkce pro tisk několika prvků konečné sekvence
function printSequence(sequence)
    for _, a, b in iter(sequence) do
        print(a, b)
    end
end


-- inicializovat generátor celých čísel
g1 = range(2, 10, 2)

-- další sekvence
g2 = range(10, 2, -2)

-- třetí sekvence
g3 = xrepeat("***")


-- spojení všech tří sekvencí
chained = chain(g1, g2, g3)

-- získání prvních dvaceti prvků z výsledné nekonečné sekvence
trimmed = take_n(20, chained)
enumerated = enumerate(trimmed)

print()
print("chained and trimmed sequence")
print("----------------------------")
printSequence(enumerated)

-- vše v jediném příkazu
trimmed2 = take_n(20, chain(range(2, 10, 2), range(10, 2, -2), xrepeat(100)))
enumerated2 = enumerate(trimmed2)

print()
print("chained and trimmed sequence")
print("----------------------------")
printSequence(enumerated2)


-- finito
