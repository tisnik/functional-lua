--[[

  Seriál "Programovací jazyk Lua"

  Demonstrační příklad k článku:
      Lua Fun: knihovna pro zpracování konečných i nekonečných sekvencí v jazyce Lua

]]


-- načtení knihovny Lua Fun a současně import symbolů do globálního jmenného prostoru
require "fun"()


print("nth(2, {10,20,30,40})")
print("----------------------")
print(nth(2, {10,20,30,40}))


print()
print("nth(100, {10,20,30,40})")
print("----------------------")
print(nth(100, {10,20,30,40}))


print()
print("nth(3, zeros())")
print("----------------------")
print(nth(3, zeros()))


print()
print("nth(42, range(0, 100))")
print("----------------------")
print(nth(42, range(0, 100)))


print()
print("nth(42, range(0, 10))")
print("----------------------")
print(nth(42, range(0, 10)))


print()
print("nth(42, tail(range(0, 100)))")
print("----------------------")
print(nth(42, tail(range(0, 100))))


print()
print("nth(1, 'Hello world!')")
print("----------------------")
print(nth(1, 'Hello world!'))


print()
print("nth(5, 'Hello world!')")
print("----------------------")
print(nth(5, 'Hello world!'))


-- finito
