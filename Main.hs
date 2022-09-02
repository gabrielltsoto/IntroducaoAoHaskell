--Gabriel Luiz Tokarski Soto
--Trabalho 3 - Listas e Recursividade

{-1) Escreva uma função para o cálculo dos números da sequência de Fibonacci, utilizando Haskell. -}
fibonacci :: Integer -> Integer
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n-1) + fibonacci (n-2)

{-2) Um dos primeiros algoritmos documentados é o algoritmo para o cálculo do Maior Divisor Comum (MDC) de Euclides publicado por volta do ano 300 AC. Podemos simplificar este algoritmo dizendo que dados dois inteiros A e B, o MDC entre eles será dado pelo valor absoluto de A se B=0 e pelo MDC entre B e o resto da divisão de A por B se B>0. Escreva uma função para o cálculo do MDC entre dois números inteiros positivos, usando o algoritmo de Euclides conforme apresentado aqui, utilizando Haskell. -}
mdc :: Integer -> Integer -> Integer
mdc a b =
  if b == 0 then abs(a)
  else (mdc b (a `mod` b))

{-3) Escreva uma função recursiva que dado um número inteiro n, devolva a soma dos dígitos deste número. Exemplo: dado 1234 a função deverá devolver 10. Utilizando Haskell e recursividade. -}
somaDigito :: Integer -> Integer
somaDigito x =
  if div x 10 == 0 then x
  else somaDigito (div x 10) + (x `mod` 10)

{-4) Escreva uma função que devolva a soma de todos os números menores que 10000 que sejam múltiplos de 3 ou 5. -}
somaMult :: Int -> Int
somaMult x =
  if x == 0 then 0
  else if x == 10000 then somaMult(9999)
  else if x `mod` 3 == 0 then x + (somaMult (x-1))
  else if x `mod` 5 == 0 then x + (somaMult (x-1))
  else (somaMult (x-1))

{-5) Escreva uma função que, recebendo uma lista de inteiros, apresente a diferença entre a soma dos quadrados e o quadrado da soma destes inteiros, usando recursividade-}

{-6) O Crivo de Eratóstenes não é o melhor algoritmo para encontrar números primos. Crie uma função que implemente o Crivo de Euler (Euler’s Sieve) para encontrar todos os números primos menores que um determinado inteiro dado.-}

{-7) Nem só de Fibonacci vivem os exemplos de recursão. Escreva uma função que devolva todos os números de uma sequência de Lucas (2, 1, 3, 4, 7, 11, 18, 29, 47, 76, 123) menores que um inteiro dado.-}
lucas :: Integer -> [Integer]
lucas n = lucasAux 1 (-1) n

lucasAux p q n =
  if n==0 then [2]
  else if n==1 then [2] ++ [p]
  else (lucasAux p q (n-1)) ++[(p* (last(lucasAux p q (n-1)))-q*(last(lucasAux p q (n-2))))]

{-8) Escreva uma função, chamada aoContrario em Haskel para reverter uma lista. Dado [1,2,3] devolva [3,2,1].-}
aoContrario :: [arr] -> [arr]
aoContrario [] = []
aoContrario (x:xs) = aoContrario xs ++ [x]

{-9) Escreva uma função chamada somaRecursiva que recebe dois valores inteiros e devolve o produto destes valores sem usar o operador de multiplicação.-}
somaRecursiva :: Integer -> Integer -> Integer
somaRecursiva x 1 = x
somaRecursiva x y = x + somaRecursiva x (y-1)

{-10) Escreva uma função chamada comprimento que receba uma lista de inteiros e devolva o comprimento desta lista. Observe que você não pode usar nenhuma função que já calcule o comprimento de uma lista.-}
comprimento :: [Integer] -> Integer
comprimento [] = 0
comprimento (x:xs) = 1 + comprimento xs

main = do
  putStrLn $ "Func1: fibonacci. Input: 2. Resultado: " ++ show(fibonacci 2) ++ "."
  putStrLn $ "Func2: mdc. Input: 16 24. Resultado: " ++ show(mdc 16 24) ++ "."
  putStrLn $ "Func3: somaDigito. Input: 569. Resultado: " ++ show(somaDigito 569) ++ "."
  putStrLn $ "Func4: somaMult. Input: 10000. Resultado: " ++ show(somaMult 10000) ++ "."
  putStrLn $ "Func7: lucas. Input: 7. Resultado: " ++ show(lucas 7) ++ "."
  putStrLn $ "Func8: aoContrario. Input: [1,2,4,8,16,32,64]. Resultado: " ++ show(aoContrario [1,2,4,8,16,32,64]) ++ "."
  putStrLn $ "Func9: somaRecursiva. Input: 6 5. Resultado: " ++ show(somaRecursiva 6 5) ++ "."
  putStrLn $ "Func10: comprimento. Input: [1,2,4,8,16,32,64]. Resultado: " ++ show(comprimento [1,2,4,8,16,32,64]) ++ "."