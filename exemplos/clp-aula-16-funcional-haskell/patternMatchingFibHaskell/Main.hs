module Main where

fib :: Int -> Int
fib n 
  | n == 1 = 1
  | n == 2 = 1
  | n > 2  = fib (n-2) + fib (n-1)
  | otherwise = error "Fibonacci nao definido."



fib2 :: Int -> Int
fib2 1 = 1
fib2 2 = 1
fib2 n = fib2 (n-2) + fib2 (n-1)


main = do
  putStrLn "\nCasamento de padrões:\n"
  putStrLn (show (fib 3))
  putStrLn (show (fib2 3))