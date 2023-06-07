module Main where

main :: IO()
main = do
  -- Funções infixadas (infix) podem ser transformadas em funções pré-fixadas pelo uso dos parêntesis.
  putStrLn "\n\n-----------------------------------"
  putStrLn "Função soma infixada:\n"
  print ((+) 5 8)
-- Funções anônimas em Haskell (ou forma lambda) são construídas com a barra invertida (\) representando o lambda.
  putStrLn "\n\n-----------------------------------"
  putStrLn "Função lambda:\n"
  putStrLn ("(\\x -> x * x) 3 = " ++ show ((\x -> x * x) 3))

