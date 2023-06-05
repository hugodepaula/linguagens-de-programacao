module Main where

fat :: Int -> Int
fat 0 = 1
fat n = n * fat (n-1)


fat2 :: Int -> Int
fat2 n = 
   caudaFat n 1
      where 
      caudaFat 0 a = a
      caudaFat n a = caudaFat (n-1) (n * a)


calcPi :: Double -> Double
calcPi 0 = 4
calcPi n = 4*(((-1)**n) / (2.0*n + 1.0)) + calcPi (n-1)


main :: IO()
main = do
  putStrLn "\n"
  putStrLn (show (fat 3))
  putStrLn (show (fat2 3))
  putStrLn (show (calcPi 100))