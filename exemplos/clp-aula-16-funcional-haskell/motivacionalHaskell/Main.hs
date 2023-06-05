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
 
  
  
