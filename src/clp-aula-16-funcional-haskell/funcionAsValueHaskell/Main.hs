module Main where


-- galaxia é uma constante definida como uma "função constante"
galaxia :: Int
galaxia = 42

x :: Int
x = 5

maiorque :: Bool       -- constante booleana
maiorque = x > 71

quadrado:: Int -> Int  -- declaração da função quadrado
quadrado x = x*x       -- definição da função quadrado


main = do
  putStrLn "\n\n-----------------------------------"
  putStrLn "Função constante:\n"
  putStrLn ("galaxia = " ++ show galaxia)
  putStrLn ("maiorque = " ++ show maiorque)
  putStrLn "\n\n-----------------------------------"
  putStrLn "Função de uma variável:\n"
  putStrLn ("quadrado 5 = " ++ show (quadrado 5))
  