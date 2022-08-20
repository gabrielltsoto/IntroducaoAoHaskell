--Gabriel Luiz Tokarski Soto

{-1) Escreva uma função chamada soma1 que recebe um inteiro como argumento e retorna um 
inteiro uma unidade maior que a entrada.-}
soma1 :: Integer -> Integer
soma1 x = x + 1

{-2) Escreva uma função chamada sempre que, não importando o valor de entrada, devolva sempre zero. Observe que neste caso a entrada pode ser de qualquer tipo. -}
sempre :: x -> Integer
sempre x = 0

{-3) Escreva uma função chamada treco que receba três valores em ponto flutuantes com precisão dupla e retorne o resultado da soma dos dois primeiros multiplicado pelo terceiro.-}
treco :: Double -> Double -> Double -> Double
treco x y z = (x + y) * z 

{-4) Escreva uma função chamada resto que devolva o resto de uma divisão entre dois números inteiros.-}
resto :: Integer -> Integer -> Integer
resto x y = x `mod` y

{-5) Escreva uma função chamada precoMaior que devolva o maior valor entre quatro valores monetários.-}
precoMaior :: Double -> Double -> Double -> Double -> Double
precoMaior a b c d = maximum[a, b, c, d]

{-6) Escreva uma função chamada impar que devolva True, sempre que o resultado do produto de dois números inteiros for ímpar.-}
impar :: Integer -> Integer -> Bool
impar x y = resto (x * y) 2 /= 0

{-7) Escreva uma função em Haskell que receba números reais (double) e devolva o resultado da equação x**2+y/2+z.-}
equacao :: Double -> Double -> Double -> Double
equacao x y z = x**2 + ((y/2) + z)

{-8) Escreva uma função em Haskell chamada diagnostico que receba o peso do aluno e imprima um diagnóstico de obesidade, segundo a tabela que pode ser encontrada no link: Sobrepeso, obesidade e obesidade mórbida: entenda a diferença entre os três termos (cuidadospelavida.com.br). Observe que este diagnóstico é meramente estatístico e não
tem nenhum valor real, está sendo usado nesta questão apenas para a definição das faixas. Todo e qualquer diagnóstico deve ser feito por um profissional médico.-}
diagnostico :: Double -> String
diagnostico weight 
  |weight/1.85^2<17 = "Muito Abaixo do peso"
  |weight/1.85^2<=18.49 = "Abaixo do peso"
  |weight/1.85^2<=24.99 = "Peso normal"
  |weight/1.85^2<=29.99 = "Sobrepeso"
  |weight/1.85^2<=34.99 = "Obesidade leve"
  |weight/1.85^2<=39.99 = "Obesidade severa"
  |otherwise ="Obesidade mórbida"
{-9) Escreva uma função em Haskell chamada bissexto que receba um ano e devolva True se o ano for bisexto sabendo que anos bissextos obedecem a seguinte regra:
𝑇𝑜𝑑𝑜𝑠 𝑜𝑠 𝑎𝑛𝑜𝑠 𝑞𝑢𝑒 𝑠𝑒𝑗𝑎𝑚 𝑑𝑖𝑣𝑖𝑠í𝑣𝑒𝑖𝑠 𝑝𝑜𝑟 4 
      𝐸𝑥𝑐𝑒𝑡𝑜 𝑜𝑠 𝑎𝑛𝑜𝑠 𝑞𝑢𝑒 𝑠ã𝑜 𝑚ú𝑙𝑡𝑖𝑝𝑙𝑜𝑠 𝑑𝑒 100 
            𝐸𝑥𝑐𝑒𝑡𝑜 𝑜𝑠 𝑎𝑛𝑜𝑠 𝑞𝑢𝑒 𝑠ã𝑜 𝑚ú𝑙𝑡𝑖𝑝𝑙𝑜𝑠 𝑑𝑒 400 
1997 não é bissexto, 1900 não é bissexto e 2000 é bissexto.-}
bissexto :: Integer -> Bool
bissexto year =  if (year `mod` 4) == 0 && ((year `mod` 100) /= 0)
     || ((year `mod` 100) == 0 && (year `mod` 400) == 0) then
    True
else
    False

{-10) Em Haskell existe o tipo par cuja assinatura tem a seguinte forma: 𝑝𝑎𝑟∷(𝐼𝑛𝑡,𝐼𝑛𝑡). Escreva uma função em Haskell que devolva a soma dos componentes de um par de inteiros.-}
par :: (Integer, Integer) -> Integer
par tuple = fst tuple + snd tuple

main = do
  putStrLn "Exemplo das funções:\n"
  putStrLn "1) Func: soma1 | entrada: Integer | Resultado: Integer"
  print(soma1 4)
  putStrLn "2) Func: sempre | entrada: Nao Definida | Resultado: Integer"
  print(sempre 5)
  putStrLn "3) Func: treco | entrada: Double Double Double | Resultado: Double"
  print(treco 2.0 3.0 5.0)
  putStrLn "4) Func: resto | entrada: Integer Integer | Resultado: Integer"
  print(resto 5 3)
  putStrLn "5) Func: precoMaior | entrada: Double Double Double Double | Resultado: Double"
  print(precoMaior 120.00 120.50 (-121.00) 120.99)
  putStrLn "6) Func: impar | entrada: Integer Integer| Resultado: Bool"
  print(impar 3 2)
  putStrLn "7) Func: equacao | entrada: Double Double Double | Resultado: Double"
  print(equacao 2.0 4.0 6.0)
  putStrLn "8) Func: diagnostico | entrada: Integer | Resultado: Integer"
  print(diagnostico 71)
  putStrLn "9) Func: bissexto | entrada: Integer | Resultado: Bool"
  print(bissexto 2001)
  putStrLn "10) Func: par | entrada: (Integer, Integer)) | Resultado: Integer"
  print(par (10, 30))
