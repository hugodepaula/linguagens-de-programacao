# -*- coding: utf-8 -*-
"""
taxador.py: closures

@author: Prof. Hugo de Paula
@contact: hugo@pucminas.br


"""

def construtor_de_taxador(taxa):
    def taxador(valor):
        return valor * (float(taxa) / 100)
    return taxador

def construtor2(taxa):
    return lambda valor: valor * (float(taxa) / 100)
 


vat1 = construtor_de_taxador(22)
vat2 = construtor_de_taxador(7)


print("ref construtor_de_taxador(22) = {0}".format(vat1))
print("ref construtor_de_taxador(7) = {0}".format(vat2))


print("construtor_de_taxador(22)(100) = {0}".format(vat1(100)))
print("construtor_de_taxador(7)(100) = {0}".format(vat2(100)))


vat3 = construtor2(15)
vat4 = construtor2(5)

print("ref construtor_de_taxador(15) = {0}".format(vat3))
print("ref construtor_de_taxador(5) = {0}".format(vat4))


print("construtor_de_taxador(15)(100) = {0}".format(vat3(100)))
print("construtor_de_taxador(5)(100) = {0}".format(vat4(100)))

