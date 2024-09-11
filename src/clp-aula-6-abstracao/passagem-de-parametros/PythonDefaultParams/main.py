def shulambs(n, opt=10, maybe=20):
  return n + opt + maybe

# print("shulambs(): {0}".format(shulambs()))

print("shulambs(5): {0}".format(shulambs(5)))
print("shulambs(5, 5): {0}".format(shulambs(5, 5)))
print("shulambs(5, 5, 5): {0}".format(shulambs(5, 5, 5)))

print("shulambs(5, maybe=5): {0}".format(shulambs(5, maybe=5)))

