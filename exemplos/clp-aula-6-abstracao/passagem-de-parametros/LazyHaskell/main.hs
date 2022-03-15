import Debug.Trace
qSort :: [Int] -> [Int]
qSort [] = []
qSort (x:xs) =
   qSort (filter (< x) xs) ++ [x] ++ qSort (filter (>= x) xs)

menor :: [Int] -> Int
menor lista = head (qSort lista)

menores :: [Int] -> Int -> [Int]
menores lista n = take n (qSort lista)


main :: IO()
main = do
  putStrLn (show (menor [17, 5, 6, 2, 3, 7, 9, 12]))  
  putStrLn (show (menores [17, 5, 6, 2, 3, 7, 9, 12] 3))
  