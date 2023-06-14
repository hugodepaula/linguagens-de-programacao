module Main where

-- Criar todos os triângulos retângulaso cujos catetos variam de 1 a n.
triang :: Float -> [(Float, Float, Float)]
triang n = [(sqrt (b^^2 + c^^2), b, c) | b <- [1.0 .. n] , c <- [1.0 .. n]]

main = do
  putStrLn "\n\nLista de triânculos retângulos com catetos entre 1 e 5"
  let triangRet = triang 5
  print  triangRet