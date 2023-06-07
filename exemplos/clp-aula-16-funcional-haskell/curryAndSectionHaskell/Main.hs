module Main where

-- Haskell suporta funções curry, com todos seus operadores implementados com curry.
-- adiciona(x,y) = x + y
-- Se adiciona é do tipo curry, 
-- adiciona(5) retornará uma função anônima, 5(y) = 5 + y

-- Função soma recebe dois parâmetros
soma :: Int -> Int -> Int
soma x y = x + y


-- Função aplica recebe uma função de um parâmetro (Int -> Int) e mais um parâmetro Int
aplica :: (Int -> Int) -> Int -> Int
aplica f x = f x

-- Oparador + com Section
mais2 :: Int -> Int
mais2 = (2 +)

-- Oparador * com Section
vezes3 = (* 3) 

main :: IO()
main = do
  putStrLn "\n\n-----------------------------------"
  putStrLn "Função soma com Currying:\n"
  putStrLn ("aplica (soma 10) 20 = " ++ show (aplica (soma 10) 20))
  putStrLn ("aplica mais2 20 = " ++ show (aplica mais2 20))
  putStrLn ("aplica vezes3 20 = " ++ show (aplica vezes3 20))
