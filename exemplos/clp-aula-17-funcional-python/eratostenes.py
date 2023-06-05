from itertools import islice
import timeit
import matplotlib.pyplot as plt

def gen():
    i = 2
    while True:
        yield i
        i += 1


def take(n, iterable):
    "Retorna os n primeiros elementos de um iteravel com uma lista"
    return list(islice(iterable, n))
 


def primos():
   for n in gen():
     if not any(i>1 and i!=n and n%i == 0 for i in islice(gen(), n)):
             yield n
 
print(take(25, primos()))
# [1, 2, 3, 5, 7, 11, 13, 17, 19, 23]

def primos2(lim):
   for n in range(2, lim):
     if not any(i>1 and i!=n and n%i == 0 for i in range(2,n-1)):
             yield n

print([*primos2(100)])


def multn(n, lista):
    return filter(lambda x: x % n != 0, lista) 


def primos3(lista):
  if len(lista) == 1:
    return lista
  else:
    return [*lista[:1]] + primos3([*multn(lista[0], lista[1:])])
  
  

print(primos3(range(2,100)))



print(timeit.timeit(lambda: take(25, primos()), number=10000))
print(timeit.timeit(lambda: [*primos2(100)], number=10000))
print(timeit.timeit(lambda: primos3(range(2,100)), number=10000))



steps = list(range(100, 1100, 100))

timeList1 = [timeit.timeit(lambda: [*primos2(n)], number=10000) for n in steps]
timeList2 = [timeit.timeit(lambda: primos3(range(2, n)), number=10000) for n in steps]

plt.plot(steps, timeList1)

plt.plot(steps, timeList2)


