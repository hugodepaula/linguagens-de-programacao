# -*- coding: utf-8 -*-
"""
chef.py: Modularizacao e parametrização

@author: Prof. Hugo de Paula
@contact: hugo@pucminas.br

@version 1.0

"""

print("Eu gostaria de macarrão.")
print("Eu gostaria de torta de maçã.")

# Escrever apenas o que é alterado
def chef(comida):
    print("Eu gostaria de {0}.".format(comida))
    
chef("macarrão")
chef("torta de maçã")

# outro exemplo
def colocarNaPanela(comida):
    print("Colocar {0} na panela.".format(comida))

def misturar(comida):
    print("Misturar {0}.".format(comida))

print("---------------------------------")
print("Pegar o peixe.")
colocarNaPanela("peixe")
colocarNaPanela("agua")

print("Pegar o frango.")
misturar("frango")
misturar("coco")

print("---------------------------------")

def cozinhar(ingred1, ingred2, procedimento):
    print("Pegar o {0}.".format(ingred1))
    procedimento(ingred1)
    procedimento(ingred2)

cozinhar("peixe", "agua", colocarNaPanela)
cozinhar("frango", "coco", misturar)









