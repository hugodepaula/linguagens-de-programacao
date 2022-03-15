def multiplica(x, y):
  print(x * y)

# multiplica(1 , 2 , 3)

# TypeError : multiplica() takes 2 positional arguments but 3 were given

def multiplicaVar(* args):
  res = 1
  for num in args:
    res *= num
    print(res, end=", ")
  print()

multiplicaVar(2, 3, 4)
multiplicaVar(2, 3, 4, 5)


