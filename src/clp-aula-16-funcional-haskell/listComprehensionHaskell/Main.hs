module Main where
-- Este módulo apresenta operações com List Comprehension em Haskell

-- Implementação recursiva da função take n lista
pegar :: Int -> [u] -> [u]
pegar n []    = []
pegar 0 _     = []
pegar n (a:x) = a : pegar (n-1) x

-- Implementação recursiva da função drop n lista
largar :: Int -> [u] -> [u]
largar n []    = []
largar 0 lista = lista
largar n (a:x) = largar (n-1) x

-- Implementação da função length usando recursividade normal
compr :: [u] -> Int
compr []    = 0
compr (a:x) = 1 + compr x

-- Implementação da função length usando recursividade de cauda
compr2 :: [u] -> Int
compr2 lista = comprC lista 0
      where
        comprC [] r  = r
        comprC (a:x) r = comprC x (r+1)

soma :: Num u => [u] -> u
soma [] = 0
soma (a:x) = a + soma x

soma2 :: Num u => [u] -> u
soma2 x = somaC x 0
    where 
       somaC [] r = r
       somaC (a:x) r = somaC x (r+a)

prod2 :: Num u => [u] -> u
prod2 x = prodC x 1
    where 
       prodC [] r = r
       prodC (a:x) r = prodC x (r*a)


main = do
  putStrLn "\n\n-----------------------------------"
  putStr "pegar 2 [1, 2, 3, 4]:    "
  print (pegar 2 [1, 2, 3, 4])
  putStr "pegar 0 [1, 2, 3, 4]:    "
  print (pegar 0 [1, 2, 3, 4])
  putStr "pegar 4 [1, 2, 3, 4]:    "
  print (pegar 4 [1, 2, 3, 4])
  putStr "take 2 [1, 2, 3, 4]:     "
  print (take 2 [1, 2, 3, 4])
  putStr "take 0 [1, 2, 3, 4]:     "
  print (take 0 [1, 2, 3, 4])
  putStr "take 6 [1, 2, 3, 4]:     "
  print (take 6 [1, 2, 3, 4])
  putStrLn "\n-----------------------------------"
  putStr "largar 2 [1, 2, 3, 4]: "
  print (largar 2 [1, 2, 3, 4])
  putStr "largar 0 [1, 2, 3, 4]: "
  print (largar 0 [1, 2, 3, 4])
  putStr "largar 6 [1, 2, 3, 4]: "
  print (largar 6 [1, 2, 3, 4])
  putStr "drop 2 [1, 2, 3, 4]:   "
  print (drop 2 [1, 2, 3, 4])
  putStr "drop 0 [1, 2, 3, 4]:   "
  print (drop 0 [1, 2, 3, 4])
  putStr "drop 6 [1, 2, 3, 4]:   "
  print (drop 6 [1, 2, 3, 4])
  putStrLn "\n-----------------------------------"
  putStr "compr [1, 2, 3, 4]:  "
  print (compr [1, 2, 3, 4])
  putStr "compr []:            "
  print (compr [])
  putStr "compr2 [1, 2, 3, 4]: "
  print (compr2 [1, 2, 3, 4])
  putStr "compr2 []:           "
  print (compr2 [])
  putStrLn "\n-----------------------------------"
  putStr "soma [1, 2, 3, 4]:  "
  print (soma [1, 2, 3, 4])
  putStr "soma []:            "
  print (soma [])
  putStr "sum [1, 2, 3, 4]:   "
  print (sum [1, 2, 3, 4])
  putStr "sum []:             "
  print (sum [])
  putStrLn "\n-----------------------------------"
  putStr "somaC [1, 2, 3, 4]:  "
  print (soma2 [1, 2, 3, 4])
  putStr "prodC [1, 2, 3, 4]:  "
  print (prod2 [1, 2, 3, 4])
