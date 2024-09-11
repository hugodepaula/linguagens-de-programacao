# -*- coding: utf-8 -*-
"""
Created on Wed Jun  8 10:16:29 2022

@author: Hugo
"""
import timeit

# 4 - 4/3 + 4/5 - 4/7 ..... = pi

# 4*sum( ((-1)^n) / (2n + 1)) = pi

def pirec(n, t):
    if (n == t):
        return 4*((-1.0)**n) / (2.0*n + 1)
    else:
        return 4*((-1.0)**n) / (2.0*n + 1) + pirec(n + 1, t)

start = timeit.default_timer()
print("pi(10) = ",format(pirec(0, 2000)))
stop = timeit.default_timer()
print('Tempo pi: ', stop - start) 



# 4 - 4/3 + 4/5 - 4/7 ..... = pi

# 4*sum( ((-1)^n) / (2n + 1)) = pi

def pirecacc(n, t, num, den):
    if (n == t):
        return (num / den)
    else:
        return (num / den) + pirecacc(n + 1, t, -1*num, den+2)

start = timeit.default_timer()
print("pi(10) = ",format(pirecacc(0, 2000, 4, 1)))
stop = timeit.default_timer()
print('Tempo pi: ', stop - start) 



# 4 - 4/3 + 4/5 - 4/7 ..... = pi

# 4*sum( ((-1)^n) / (2n + 1)) = pi

def pitail(n, t, num, den, res):
    if (n == t):
        return (num / den) + res
    else:
        return pitail(n + 1, t, -1*num, den+2, (num / den) + res)

start = timeit.default_timer()
print("pi(10) = ",format(pitail(0, 2000, 4, 1, 0)))
stop = timeit.default_timer()
print('Tempo pi: ', stop - start) 
















