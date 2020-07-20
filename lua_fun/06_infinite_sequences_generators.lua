--[[

  Seriál "Programovací jazyk Lua"

  Demonstrační příklad k článku:
      Lua Fun: knihovna pro zpracování konečných i nekonečných sekvencí v jazyce Lua

]]


-- načtení knihovny Lua Fun a současně import symbolů do globálního jmenného prostoru
require "fun"()


print("zeros()")
print("-----------------------------------")
print(zeros())

print()
print("ones()")
print("-----------------------------------")
print(ones())

print()
print("xrepeat(42)")
print("-----------------------------------")
print(xrepeat(42))

print()
print("xrepeat('hello')")
print("-----------------------------------")
print(xrepeat('hello'))

print()
print("xrepeat(nil)")
print("-----------------------------------")
print(xrepeat(nil))

print()
print("duplicate(42)")
print("-----------------------------------")
print(duplicate(42))

print()
print("duplicate('hello')")
print("-----------------------------------")
print(duplicate('hello'))

print()
print("duplicate(nil)")
print("-----------------------------------")
print(duplicate(nil))

print()
print("tabulate(function(x) return x*x end))")
print("-----------------------------------")
print(tabulate(function(x) return x*x end))


-- finito
