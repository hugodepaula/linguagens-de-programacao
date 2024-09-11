module Main where

impar :: Int -> Bool
impar x = (x `mod` 2) == 1 

-- Função Filter implementada manualmente usando recursividade
filtro :: (t -> Bool) -> [t] -> [t]
filtro p [] = []
filtro p (x:xs)
  | p x       = x : filtro p xs
  | otherwise =     filtro p xs


main = do
  putStrLn "\n\n-----------------------------------"
  putStr "\nfiltro impar [1, 4 .. 50]:        "
  print (filtro impar [1, 4 .. 50])
  putStr "\nfilter impar [1, 4 .. 50]:        "
  print (filter impar [1, 4 .. 50])
  putStr "\n[x | x <- [1, 4 .. 50], impar x]: "
  print ([x | x <- [1, 4 .. 50], impar x])
