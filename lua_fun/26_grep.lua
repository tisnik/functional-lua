--[[

  Seriál "Programovací jazyk Lua"

  Demonstrační příklad k článku:
      Lua Fun: knihovna pro zpracování konečných i nekonečných sekvencí v jazyce Lua

]]


-- načtení knihovny Lua Fun a současně import symbolů do globálního jmenného prostoru
require "fun"()


-- sekvence
months = {
    "Leden",
    "Unor",
    "Brezen",
    "Duben",
    "Kveten",
    "Cerven",
    "Cervenec",
    "Srpen",
    "Zari",
    "Rijen",
    "Listopad",
    "Prosinec"
}

-- pomocná funkce pro tisk prvků konečné sekvence
function printSequence(sequence)
    each(print, sequence)
end


print("Mesice obsahujici znak 'n'")
print("--------------------------")
g1 = grep("n", months)
printSequence(g1)


print()
print("Mesice zacinajici na 'Cer'")
print("--------------------------")
g2 = grep("^Cer", months)
printSequence(g2)


print()
print("Mesice koncici na 'en'")
print("--------------------------")
g3 = grep("en$", months)
printSequence(g3)


print()
print("Vsechny mesice")
print("--------------------------")
g4 = grep(".", months)
printSequence(g4)


-- finito
