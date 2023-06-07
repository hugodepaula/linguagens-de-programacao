module Main where

-- A ideia da imutabilidade do paradigma funcional é que devemos mapear dados que são variáveis, mantendo-se o que não se varia.

-- Suponha que clientes desejam fazer pedidos para o Chef
-- Criamos a função Chef que recebe String e retorna String
chef :: String -> String
chef comida =
  "Eu gostaria de " ++ comida ++ "."


-- Função recebe ingrediente e retorna a instrução
colocarNaPanela :: String -> String
colocarNaPanela ingrediente =
  "Colocar " ++ ingrediente ++ " na panela."


-- Função recebe ingrediente e retorna a instrução
misturar :: String -> String
misturar ingrediente =
  "Misturar " ++ ingrediente ++ "."


-- Função recebe dois ingredientes e a função que representa a instrução genérica e gera a receita com as instruções
cozinhar :: String -> String -> (String -> String) -> String
cozinhar ingred1 ingred2 procedimento =
    "Pegar o " ++ ingred1 ++ ".\n" ++
    (procedimento ingred1) ++ "\n" ++
    (procedimento ingred2)




main = do
  putStrLn "\nPedidos repetitivos para um chef podem ser automatizados:\n"
  putStrLn "Eu gostaria de macarrão."
  putStrLn "Eu gostaria de torta de maçã."
  putStrLn (chef "moqueca")

  putStrLn "\n\n-----------------------------------"
  putStrLn "Descrevendo receitas manualmente:\n"
  putStrLn "Pegar o peixe."
  putStrLn ("Colocar peixe na panela")
  putStrLn ("Colocar agua na panela")
  putStrLn "Pegar o frango."
  putStrLn ("Misturar frango")
  putStrLn ("Misturar coco")

  
  putStrLn "\n\n-----------------------------------"
  putStrLn "Descrevendo receitas manualmente:\n"
  putStrLn "Pegar o peixe."
  putStrLn (colocarNaPanela "peixe")
  putStrLn (colocarNaPanela "agua")
  putStrLn "Pegar o frango."
  putStrLn (misturar "frango")
  putStrLn (misturar "coco")
 
  
  putStrLn "\n\n-----------------------------------"
  putStrLn "Criando receitas genéricas com funções de ordem superior:\n"
  putStrLn (cozinhar "peixe" "agua" colocarNaPanela)
  putStrLn (cozinhar "frango" "coco" misturar)
 
  
  
