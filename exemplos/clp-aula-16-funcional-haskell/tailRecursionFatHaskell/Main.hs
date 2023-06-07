module Main where

-- Fatorial com recursividade tradicional
-- Usando casamento de padrões
-- 0! = 1
-- n! = n * (n-1)!
-- o último passo da recursão é a multiplicação (n *)
fat :: Int -> Int
fat 0 = 1
fat n = n * fat (n-1)


-- Fatorial com recursividade de cauda
-- Introduz um acumulador para a resposta
-- A condição de parada retorna o acumulador
-- A antiga condição de parada torna-se a condição inicial do acumulador
-- Ultimo passo da recursão torna-se a chamada recursiva
-- caudaFat é embrulhada (wrapped) dentro da função fatC
fatC :: Int -> Int
fatC n = 
   caudaFat n 1
      where 
      caudaFat 0 a = a
      caudaFat n a = caudaFat (n-1) (n * a)


main :: IO()
main = do
  putStrLn "\n\n-----------------------------------"
  putStrLn "Fatorial recursivo:\n"
  putStrLn ("Fat 3 = " ++ show (fat 3))
  putStrLn "\n\n-----------------------------------"
  putStrLn "Fatorial com recursividade de cauda (tail recursion):\n"
  putStrLn ("FatC 3 = " ++ show (fatC 3))
