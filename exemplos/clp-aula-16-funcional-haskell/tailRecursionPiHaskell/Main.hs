module Main where

-- Cálculo do PI usando a série de Gregory-Leibniz
-- π = (4/1) - (4/3) + (4/5) - (4/7) + (4/9) - (4/11) + (4/13) - (4/15) 
-- π = \sum_{n=0}^{n=\infty} (-1)^n / (2n + 1)!
-- Usando recursividade tradicional
-- o último passo da recursão é a soma (termo + calcPi)
calcPi :: Double -> Double
calcPi 0 = 4
calcPi n = 4*(((-1)**n) / (2.0*n + 1.0)) + calcPi (n-1)

-- Cálcuo do PI com recursividade de cauda
-- Introduz um acumulador para a resposta
-- A condição de parada retorna o acumulador
-- A antiga condição de parada torna-se a condição inicial do acumulador
-- Ultimo passo da recursão torna-se a chamada recursiva
calcpi :: Double -> Double  
calcpi n = cpc (n-1) 1
  where
     cpc 0 a = 4*a
     cpc n a = cpc (n-1) (((-1)**n) / (2*n + 1) + a)

-- {-# WARNING Super ineficiente!!!! á pra melhorar o cálculo #-}

main :: IO()
main = do
  putStrLn "\n\n-----------------------------------"
  putStrLn "Cálculo do PI recursivo:\n"
  putStrLn ("calcPi 1000 = " ++ show (calcPi 1000))
  putStrLn "\n\n-----------------------------------"
  putStrLn "Cálculo do PI com recursividade de cauda (tail recursion):\n"
  putStrLn ("calcpi 1000 = " ++ show (calcPi 1000))