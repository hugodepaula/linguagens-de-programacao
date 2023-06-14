module Main where

--Crivo de Erathostenes

-- Inicialmente, é gerada uma lista ordenada de todos os números naturais >= 2 até o limite desejado. 
-- A partir do número seguinte ao 2, remove-se todos os múltiplos de 2 da lista. 
-- Da lista resultante, pega-se o próximo número. 
-- Em seguida, remove-se da lista todos os múltiplos deste número. 
-- Segue o algoritmo recursivamente até alcançarmos o final da lista.

-- Filtra da cauda (t) os múltiplos da cabeça (h)
-- Note que o predicado na verdade diz para manter todos os não múltiplos de h (mod x h /= 0)
eratosthenes :: [Int] -> [Int]
eratosthenes [] = []
eratosthenes (h:t) =
     h:eratosthenes (filter (\x -> mod x h /= 0) t)

-- conjunto dos primos menores ou iguais a 'x'

primos :: Int -> [Int] 
primos x = eratosthenes [2..x]

main = do
  putStrLn "\n\n Crivo de Erathostenes"
  putStr "primos 100 = "
  print (primos 100)