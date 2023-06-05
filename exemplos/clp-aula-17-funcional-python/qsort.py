# -*- coding: utf-8 -*-
"""
qsort.py: quicksort

@author: Prof. Hugo de Paula
@contact: hugo@pucminas.br

"""

def qsort(list):
  if (len(list) == 0):
    return []
  else:
    pivo = list[0]
    l = []
    l = l + qsort([x for x in list[1:] if x < pivo])
    l.append(pivo)
    l = l + qsort([x for x in list[1:] if x >= pivo])
    return l

print("qsort([2, 5, -3, 4, -10, 11, 6]) = ")
print(qsort([2, 5, -3, 4, -10, 11, 6]))


