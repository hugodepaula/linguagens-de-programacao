module Main where
import Debug.Trace

mdc :: Int -> Int -> Int

mdc m n 
   | m == 0 = n
   | m > 0  = mdc (n `mod` m) m


main = do
  putStrLn (show (mdc 20 30))

  