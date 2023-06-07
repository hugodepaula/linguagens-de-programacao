module Main where

-- galaxia é uma constante definida como uma "função constante"
galaxia :: Int
galaxia = 42

-- Função mdc = máximo divisor comum pelo método de Euclides
-- recebe 2 parâmetros do tipo Int e retorna um resultado do tipo Int
mdc :: Int -> Int -> Int
mdc m n 
  | m == 0 = n
  | m > 0  = mdc (n `mod` m) m
  | otherwise = 0 

-- função main é executada ao carregar o módulo Main. Ela retorna IO
main :: IO()
main = do
  putStrLn "\n"
  putStr "mdc 20 30 = "
  putStrLn (show (mdc 20 30))
  putStr "mdc galaxia 30 = "
  putStrLn (show (mdc galaxia 30))

  