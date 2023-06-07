module Main where

-- Apenas uma definição da função fib com várias testagem de parâmetros
fib :: Int -> Int
fib n 
  | n == 1 = 1
  | n == 2 = 1
  | n > 2  = fib (n-2) + fib (n-1)
  | otherwise = error "Fibonacci nao definido."


-- Função fibonacci com casamento de padrões (pattern matchin)
-- Múltiplas definições da função fibP, cada definição com um padrão a ser casado no parâmetro de entrada.
fibP :: Int -> Int
fibP 1 = 1
fibP 2 = 1
fibP n
  | n > 0 = fibP (n-2) + fibP (n-1)
  | otherwise = error "Fibonacci nao definido"

main = do
  putStrLn "\n\n-----------------------------------"
  putStrLn "Fib 4 sem casamento de padrões:\n"
  putStrLn ("fib 4 = " ++ show (fib 4))
  putStrLn "\n\n-----------------------------------"
  putStrLn "Fib 4 com casamento de padrões:\n"
  putStrLn ("fibP 4 = " ++ show (fibP 4))