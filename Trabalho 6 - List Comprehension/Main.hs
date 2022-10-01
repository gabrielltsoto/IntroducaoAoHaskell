--Gabriel Luiz Tokarski Soto

import Data.List

{-
1. Usando List Comprehension escreva uma função, chamada divisoresden, que devolva uma 
lista dos divisores de um número dado. 
-}
divisoresDeN :: Integer -> [Integer]
divisoresDeN n = [x | x <- [1..n],(n`mod`x)==0]

{-
2. Usando  List Comprehension  escreva  uma  função,  chamada  contaCaractere,  que  conte  a
ocorrência de um caractere específico, em uma string dada. 
-}
contaCaractere :: String -> Char -> Int
contaCaractere texto char = length [x | x <- texto, x == char]

{-
3. Usando List Comprehension escreva uma função, chamada dobroNaoNegativo, que devolve 
o dobro dos valores dos elementos não negativos da lista de inteiros dada. 
-}
dobroNaoNegativo :: [Integer] -> [Integer]
dobroNaoNegativo list = [x*2 | x <- list, x > 0]

{-
4. Usando List Comprehension escreva uma função, chamada pitagoras, que devolva uma lista 
de triplas, não repetidas, contendo os lados dos triângulos retângulos possíveis de serem 
construídos por inteiros entre 1 e um número inteiro dado. 
-}
pitagoras :: Integer -> [(Integer,Integer,Integer)]
pitagoras n =[(a,b,c) | a <- [1..n], b <- [1..n], c <- [1..n], ((a^2)+(b^2))==(c^2), c>b, b>a]

{-
5. Números  perfeitos  são  aqueles  cuja  soma  dos  seus  divisores  é  igual  ao  próprio número. Usando List Comprehension escreva uma função, chamada numerosPerfeitos, que devolva 
uma lista contendo todos os números perfeitos menores que um número dado. Lembre-se 
que você já tem uma função que devolve uma lista dos divisores de um número dado. 
-}
numerosPerfeitos :: Integer -> [Integer]
numerosPerfeitos n = [x | x <- [1..n], sum (init (divisoresDeN x))==x, x<n]

{-
6. Usando List Comprehension escreva uma função, chamada produtoEscalar, que devolva o 
produto escalar entre duas listas de inteiros. Lembre-se, existem as funções fst, snd e zip no prelude que podem ser úteis. 
-}
produtoEscalar :: [Integer] -> [Integer] -> Integer
produtoEscalar xl yl = sum [x*y | (x,y) <- zip xl yl]

{-
7. Usando  List Comprehension  escreva  uma  função,  chamada  primeirosPrimos,  que  devolva
uma lista contendo os n primeiros números primos a partir do número 2. 
-}
primeirosPrimos :: Integer -> [Integer]
primeirosPrimos n = genericTake n [x | x <- [2..], (length (divisoresDeN x))==2]

{-
8. Usando  List Comprehension  escreva  uma  função,  chamada  paresOrdenados,  que  devolva 
uma  lista  de  par  ordenados  contendo  uma  potência  de  2  e  uma  potência  de  3  até um determinado número dado. Observe que estes números podem ser bem grandes. 
-}
paresOrdenados :: Integer -> [(Double, Double)]
paresOrdenados n = [(2^x, 3^x) | x <- [0..n]]

main = do
  putStrLn $ "Func1: divisoresDeN. Input: 10. Resultado: " ++ show(divisoresDeN 10) ++ "."
  putStrLn $ "Func2: contaCaractere. Input: arara a. Resultado: " ++ show(contaCaractere "arara" 'a') ++ "."
  putStrLn $ "Func3: dobroNaoNegativo. Input: [-10, -5, 0, 5, 10]. Resultado: " ++ show(dobroNaoNegativo [-10, -5, 0, 5, 10]) ++ "."
  putStrLn $ "Func4: pitagoras. Input: 25. Resultado: " ++ show(pitagoras 25) ++ "."
  putStrLn $ "Func5: numerosPerfeitos. Input: 500. Resultado: " ++ show(numerosPerfeitos 500) ++ "."
  putStrLn $ "Func6: produtoEscalar. Input: [1..10][1..10]. Resultado: " ++ show(produtoEscalar [1..5] [1..5]) ++ "."
  putStrLn $ "Func7: primeirosPrimos. Input: 50. Resultado: " ++ show(primeirosPrimos 50) ++ "."
  putStrLn $ "Func8: paresOrdenados. Input: 10. Resultado: " ++ show(paresOrdenados 10) ++ "."
