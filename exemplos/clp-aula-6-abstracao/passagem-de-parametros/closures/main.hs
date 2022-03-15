fib :: Int -> Int
fib n 
  | n == 0    = 0
  | n == 1    = 1
  | n > 0     = fib (n-2) + fib (n-1)
  | otherwise = error "fib definida apenas para numeros naturais"

main = fib 3