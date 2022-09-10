 --Gabriel Luiz Tokarski Soto

{- 1) Escreva uma função chamada fatorialn que usando o operador range e a função foldr
devolva o fatorial de n. -}
fatorialN :: Integer -> Integer
fatorialN n = foldr (*) 1 [1..n]

{- 2) Usando a função map escreva uma função, chamada quadradoReal que recebe uma lista de números reais, positivos e negativos e devolva uma lista com o quadrado de cada um dos reais listados.-}
raiseSqr :: Double -> Double
raiseSqr x = x**2

quadradoReal :: [Double] -> [Double]
quadradoReal x = map raiseSqr x

{- 3) Usando a função map escreva uma função, comprimentoPalavras que recebe uma lista de
palavras e devolve uma lista com o comprimento de cada uma destas palavras.-}
comprimentoPalavras :: [String] -> [Int]
comprimentoPalavras x = map length x

{- 4) Usando a função filter escreva uma função, chamada maiorMultiploDe29 devolva maior 
número entre 0 e 100000 que seja divisivel por 29.-}
maiorMultiploDe29 :: Integer
maiorMultiploDe29 = maximum(filter (\x -> ((x `mod` 29)==0))[0..100000])

{- 5) Usando a função filter escreva uma função, chamada maiorMultiploDe que recebe um inteiro e devolva o maior número entre 0 e 100000 que seja divisivel por este inteiro.-}
maiorMultiploDe :: Integer -> Integer
maiorMultiploDe n = maximum(filter (\x -> ((x `mod` n)==0))[0..100000])

{-6. Usando Haskell e a função foldr defina uma função, chamada somaQuadrados que devolva a soma dos quadrados dos itens de uma lista de números naturais de comprimento n. De tal forma que: 𝑠𝑜𝑚𝑎𝑄𝑢𝑎𝑑𝑟𝑎𝑑𝑜𝑠=12 +22 +32 +42...+𝑛2.-}
somaQuadrados :: Integer -> Integer
somaQuadrados n = foldr (\x y -> x*x + y) 0 [1..n]

{-7. Usando Haskell e a função foldl defina uma função, chamada comprimento, que devolva o comprimento (cardinalidade) de uma lista dada. -}
comprimento :: [Int] -> Int
comprimento = foldl (\x y -> x + 1) 0

{-8. Esta é uma tarefa de pesquisa: você deve encontrar e executar exemplos em Haskell do uso das seguintes funções disponíveis no Prelude: flip, ord, max, min, curry, uncurry. Para cada uma destas funções você deverá encontrar, executar e testar no mínimo dois exemplos. -}

main = do
  putStrLn $ "Func1: fatorialN. Input: 5. Resultado: " ++ show(fatorialN 5) ++ "."
  putStrLn $ "Func2: quadradoReal. Input: [-5, 5, 10.5]. Resultado: " ++ show(quadradoReal [-5, 5, 10.5]) ++ "."
  putStrLn $ "Func3: comprimentoPalavras. Input: [teste, palavra, haskell]. Resultado: " ++ show(comprimentoPalavras ["teste", "palavra", "haskell"]) ++ "."
  putStrLn $ "Func4: maiorMultiploDe29. Input: . Resultado: " ++ show(maiorMultiploDe29) ++ "."
  putStrLn $ "Func5: maiorMultiploDe. Input: 356. Resultado: " ++ show(maiorMultiploDe 356) ++ "."
  putStrLn $ "Func6: somaQuadrados. Input: 5. Resultado: " ++ show(somaQuadrados 5) ++ "."
  putStrLn $ "Func7: comprimento. Input: [-5, 5, 10, 15, 20, 25]. Resultado: " ++ show(comprimento [-5, 5, 10, 15, 20, 25]) ++ "."
  putStrLn $ "Func8: flip. Input: (/) 1 2. Resultado: " ++ show(flip (/) 1 2) ++ "."
  putStrLn $ "Func8: flip. Input: mod 3 6. Resultado: " ++ show(flip mod 3 6) ++ "."
  -- putStrLn $ "Func8: ord. Input: 'a'. Resultado: " ++ show(ord 'a') ++ "."
  -- putStrLn $ "Func8: ord. Input: 'A'. Resultado: " ++ show(ord 'A') ++ "."
  putStrLn $ "Func8: max. Input: 15 5. Resultado: " ++ show(max 15 5) ++ "."
  putStrLn $ "Func8: max. Input: 100.1 100. Resultado: " ++ show(max 100.1 100) ++ "."
  putStrLn $ "Func8: min. Input: 15 5. Resultado: " ++ show(min 15 5) ++ "."
  putStrLn $ "Func8: min. Input: 100.1 100. Resultado: " ++ show(min 100.1 100) ++ "."
  -- putStrLn $ "Func8: curry. Input: fst 2 3. Resultado: " ++ show(fst 2 3) ++ "."
  -- putStrLn $ "Func8: curry. Input: fst 5 6. Resultado: " ++ show(fst 5 6) ++ "."
  putStrLn $ "Func8: uncurry. Input: mod (5,4). Resultado: " ++ show(uncurry mod (5,4)) ++ "."
  putStrLn $ "Func8: uncurry. Input: mod (5,20). Resultado: " ++ show(uncurry mod (5,20)) ++ "."