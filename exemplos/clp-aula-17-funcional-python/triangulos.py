# -*- coding: utf-8 -*-
"""
Created on Thu Nov 16 10:58:52 2017

@author: Hugo
"""

triang1 = [((b*b + c*c)**(1/2), b, c) for b in range(1,11) for c in range(1,11)]
triang2 = [((b*b + c*c)**(1/2), b, c) for b in range(1,11) for c in range(b,11)]

triang3 = [(a, b, c) for a in range(1, 11) for b in range(1,11) for c in range(1,11) if a*a == b*b + c*c]
triang4 = [(a, b, c) for b in range(1, 11) for c in range(b,11) for a in range(c,11) if a*a == b*b + c*c]


