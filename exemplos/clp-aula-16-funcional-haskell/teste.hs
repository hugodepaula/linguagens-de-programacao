module Main where


chef :: String -> String
chef comida =
  "Eu gostaria de " ++ comida ++ "."



colocarNaPanela :: String -> String
colocarNaPanela comida =
  "Colocar na panela " ++ comida ++ "."


misturar :: String -> String
misturar comida =
  "Misturar " ++ comida ++ "."


cozinhar :: String -> String -> (String -> String) -> String
cozinhar ingred1 ingred2 procedimento =
    "Pegar o " ++ ingred1 ++ ".\n" ++
    (procedimento ingred1) ++ "\n" ++
    (procedimento ingred2)




main = do
  putStrLn "Eu gostaria de macarrão."
  putStrLn "Eu gostaria de torta de maçã."
  putStrLn (chef "moqueca")

  putStrLn "\n\nReceitas:\n"
  putStrLn "Pegar o peixe."
  putStrLn (colocarNaPanela "peixe")
  putStrLn (colocarNaPanela "agua")
  putStrLn "Pegar o frango."
  putStrLn (misturar "frango")
  putStrLn (misturar "coco")
 
  
  putStrLn "\n\nReceitas genéricas:\n"
  putStrLn (cozinhar "peixe" "agua" colocarNaPanela)
  putStrLn (cozinhar "frango" "coco" misturar)
 
  
  




mdc :: Int -> Int -> Int

mdc m n 
  | m == 0 = n
  | m > 0  = mdc (n `mod` m) m

soma :: Int -> Int -> Int
soma x y = x + y

aplica :: (Int -> Int) -> Int -> Int
aplica f x = f x

fib :: Int -> Int
fib n 
  | n == 1 = 1
  | n == 2 = 1
  | n > 2  = fib (n-2) + fib (n-1)
  | otherwise = error "Fibonacci nao definido."



fib2 :: Int -> Int
fib2 1 = 1
fib2 2 = 1
fib2 n = fib2 (n-2) + fib2 (n-1)



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


pegar :: Int -> [t] -> [t]
pegar 0  _     = []
pegar _ []     = []
pegar n (x:xs) = x : pegar (n-1) xs


largar :: Int -> [t] -> [t]
largar 0 lst    = lst
largar n (x:xs) = largar (n-1) xs

maximo :: (Ord t) => [t] -> t
maximo [] = error "Lista vazia" 
maximo (x:xs) = max2 xs x
  where
  max2 []     n = n
  max2 (x:xs) n 
    | x > n     = max2 xs x
    | otherwise = max2 xs n

quad :: Int -> Int
quad x = x^2

impar :: Int -> Bool
impar x | (x `mod` 2) == 1 = True
        | otherwise = False

mapear :: (t -> u) -> [t] -> [u]
mapear f [] = []
mapear f (a:x) = f a : mapear f x

filtro :: (t -> Bool) -> [t] -> [t]
filtro p [] = []
filtro p (x:xs)
  | p x     = x : filtro p xs
  | otherwise =     filtro p xs

pairs :: [a] -> [b] -> [(a , b)]
pairs xs ys = [ (x, y) | x<-xs , y<-ys ]


triangle:: Int -> [(Int, Int)]
triangle n = [(x, y) | x<-[1 .. n], y<-[1 .. x]]


shulambs :: (Integral a) => a  
shulambs = head (filter p [100000,99999..])  
    where p x = x `mod` 242 == 0  

  
  
  
  
  
  
  
  
  
  
  
  

prox :: Float -> Float -> Float
prox n x = ( x + n / x) / 2


gen :: (Float -> Float) ->  Float -> [Float]
gen f a0 = a0 : gen f  (f a0)

sel :: Float -> [Float] -> Float
sel  tol  (a : b : resto)
  | abs (a-b) / b <= tol   = b
  | otherwise      = sel tol (b : resto)

  
raiz :: Float -> Float
raiz n = sel 0.00000001 (gen (prox n) (n/2))  
  
 
 

sel2 :: (Float -> Float -> Float -> Bool) -> Float -> [Float] -> Float
sel2 p tol (a : b : resto)
  |  p a b tol   = b
  |  otherwise  = sel2 p tol (b : resto)


testfun :: (Ord t, Num t) => t -> t -> [t]
testfun s e
      | s > e = []
      | otherwise = s : testfun (s + 1) e


metades :: [Int] -> ([Int], [Int])
metades lista = (take ((length lista) `div` 2) lista , drop ((length lista) `div` 2)  lista )


calcpi :: Double -> Double  
calcpi n = cpc (n-1) 1
  where
     cpc 0 a = 4*a
     cpc n a = cpc (n-1) (((-1)**n) / (2*n + 1) + a)


--media :: [Double] -> Double
--media lista  = medc lista 0 0
--  where 
--       medc [] num den = num/den
--     medc (x:xs) num den = medc xs (num + x) (den + 1)

--medp :: [Double] -> Double
--
-- medp lista = (sum lista) / (length lista)
 


sss :: Int -> Int -> Int
sss n k = sum (take k [m | m <- [n^2 | n <- [1..]], odd m])




seno :: Double -> Double -> Double
seno x n = senc x (n-1) 0 x 1 1
  where
    senc x n res num den t
      | t <= n    = senc x n (res + num/den) ((-1)*num*x*x) (den*(2*t)*(2*t+1)) (t+1)
      | otherwise = res + num/den
      
      
replicar :: Int -> t -> [t]
replicar 0 _ = []
replicar n x = x: replicar (n-1) x


rep2 :: Int -> t -> [t]
rep2 n x = take n (repeat x)