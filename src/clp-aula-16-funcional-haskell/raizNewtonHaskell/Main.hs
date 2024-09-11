module Main where

-- Cálculo de Raiz Quadrada pelo Método de Newton-Raphson
-- a (i+1) = (a (i) + n / a(i)) / 2

-- Função que retorna próxima aproximação
prox :: Float -> Float -> Float
prox n a = ( a + n / a) / 2

-- Geração desta lista infinita (lista lazy):
-- [a0,  f a0,  f (f a0),  f (f (f a0)), ...]
gen :: (Float -> Float) ->  Float -> [Float]
gen f a0 = a0 : gen f  (f a0)

-- Condição de convergência. Gera aproximações até que a tolerância seja atingida
sel :: Float -> [Float] -> Float
sel tol [] = 0
sel tol [b] = b
sel  tol  (a : b : resto)
  | abs (a-b) / b <= tol   = b
  | otherwise              = sel tol (b : resto)

-- Função para a raiz aproximada
-- (prox n) gera uma função lambda com avaliação parcial
raiz :: Float -> Float
raiz n = sel 0.00000001 (gen (prox n) (n/2))  

main = do
  putStrLn "\n\nAproximação de raiz quadrada pelo método de Newton-Raphson"
  putStr "raiz 9 =  "
  print (raiz 9)
  putStr "sqrt 9 =  "
  print (sqrt 9)
  putStr "raiz 40 = "
  print (raiz 40)
  putStr "sqrt 40 = "
  print (sqrt 40)  