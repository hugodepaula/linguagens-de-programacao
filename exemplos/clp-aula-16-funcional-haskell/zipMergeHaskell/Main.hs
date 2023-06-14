module Main where


-- Função que gera pares ordenados fundindo (merging) duas listas com recursividade normal
merge :: [t] -> [u] -> [(t,u)]
merge [] _  = []
merge _ []  = []
merge (a1:x1) (a2:x2) = (a1, a2) : merge x1 x2

-- Função que gera pares ordenados fundindo (merging) duas listas com recursividade de cauda
mergeC :: [t] -> [u] -> [(t,u)]
mergeC l1 l2   = mergeCC l1 l2 []
  where
   mergeCC [] _  lp  = lp
   mergeCC _ []  lp  = lp
   mergeCC (a1:x1) (a2:x2) lp = mergeCC x1 x2 (lp ++ [(a1,a2)])

main = do
  putStrLn "\n-----------------------------------"
  putStrLn "\nMerge ['a' .. 'j'] [1 .. 10]"
  putStr "Recursividade normal:        "
  print (merge ['a' .. 'j'] [1 .. 10])
  putStr "Recursividade de cauda:      "
  print (mergeC ['a' .. 'j'] [1 .. 10])
  putStrLn "\n-----------------------------------"
  putStr "zip ['a' .. 'j'] [1 .. 10]:  "
  print (zip  ['a' .. 'j'] [1 .. 10])
  putStrLn "\n-----------------------------------"
  putStrLn "\nMerge ['a' .. 'j'] [1 .. 5]"
  putStr "Recursividade normal:        "
  print (merge ['a' .. 'j'] [1 .. 5])
  putStr "Recursividade de cauda:      "
  print (mergeC ['a' .. 'j'] [1 .. 5])
  putStrLn "\n-----------------------------------"
  putStr "zip ['a' .. 'j'] [1 .. 5]:   "
  print (zip  ['a' .. 'j'] [1 .. 5])
