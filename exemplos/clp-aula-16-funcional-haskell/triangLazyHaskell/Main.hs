module Main where

-- Itera inicialmente pelo xs e, para cada valor de x, itera sobre ys.
pairs :: [a] -> [b] -> [(a , b)]
pairs xs ys = [ (x, y) | x <- xs, y <- ys]

-- Criar todos os índices da matriz triangular inferior.
triangMatrix:: Int -> [(Int, Int)]
triangMatrix n = [(x, y) | x <- [1 .. n], y <- [1 .. x]]


-- Criar todos os triângulos retângulos cujos catetos variam de 1 a n.
triang :: Float -> [(Float, Float, Float)]
triang n = [(sqrt (b^^2 + c^^2), b, c) | b <- [1.0 .. n] , c <- [1.0 .. n]]

main = do
  putStrLn "\n\nLista de triânculos retângulos com catetos entre 1 e 5"
  print (pairs [1, 2, 3] [4, 5])
  print (triangMatrix 3)
  let triangRet = triang 5
  print triangRet
  
  
  
  
  
  
  
