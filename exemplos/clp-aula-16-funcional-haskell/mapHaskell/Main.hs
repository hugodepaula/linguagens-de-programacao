module Main where

quad :: Int -> Int
quad x = x^2

impar :: Int -> Bool
impar x = (x `mod` 2) == 1 

mapear :: (t -> u) -> [t] -> [u]
mapear f []    = []
mapear f (a:x) = f a : mapear f x


main = do
  putStrLn "\n\n-----------------------------------"
  print (mapear quad [1, 2, 3, 4])
  print (mapear impar [1, 2, 3, 4])
  putStrLn "\n-----------------------------------"
  print (map quad [1, 2, 3, 4])
  print (map impar [1, 2, 3, 4])
  putStrLn "\n-----------------------------------"
  print ([quad x | x <- [1 .. 4]])
  print ([impar x | x <- [1 .. 4]])
 