
def inc(x):
    return x+1

print(inc(5))
print(type(inc))
print(type(inc(5)))
print(type("inc(5)"))
print(type(eval ("inc(5)" )))
print(type((lambda x: x*2)))
print(type((lambda x: x*2) (4)))


def f(a, b): return a + b
def inc(x): return x + 1
def double(x): return x*2
print(f(1, 2))
print(f("cat","dog"))
print(f(inc, double))


