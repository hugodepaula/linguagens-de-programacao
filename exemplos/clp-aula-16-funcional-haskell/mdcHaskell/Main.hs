module Main where

galaxia :: Int
galaxia = 42


mdc :: Int -> Int -> Int

mdc m n 
   | m == 0 = n
   | m > 0  = mdc (n `mod` m) m


main :: IO()
main = do
  print "mdc 20 30 = " ++ (mdc 20 30)
	print "mdc " ++ galaxia ++ " 30 = " ++ (mdc galaxia 30)
	

  