;;Gabriel Luiz Tokarski Soto
;; 1. Na  aula  disponível  em:  https://replit.com/@frankalcantara/ClojureAula2?v=1  foram destacadas diversas funções (expressões), como funções de primeira ordem, disponíveis em Clojure.  Sua  primeira  tarefa  será  descrever  cada  uma  destas  funções  e  apresentar  dois exemplos  de  uso  de  cada  uma  delas.  Lembre-se  os  exemplos  precisam  ser  utilizados  de forma que o resutado da função possa ser visto no terminal.

(println "assoc - retorna um objeto map conforme a associação de chave - valor passada.")
(println (format "Func assoc: Input: %s; Resultado: %s"  "{:a 0 :b 5} :a 1" (str (assoc {:a 0 :b 5} :a 1))))
(println (format "Func assoc: Input: %s; Resultado: %s"  "{:a 0 :b 5} :c 15" (str (assoc {:a 0 :b 5} :c 15))))

(println "char - Retorna o char equivalente ao decimal dado conforme tabela ASCII")
(println (format "Func char: Input: %s; Resultado: "  "65") (char 65))
(println (format "Func char: Input: %s; Resultado: "  "90") (char 90))

(println "conj - Concatena os valores do segundo argumento ao primeiro argumento")
(println (format "Func conj: Input: %s; Resultado: %s"  "[a b c] d e" (str (conj ["a" "b" "c"] "d" "e"))))
(println (format "Func conj: Input: %s; Resultado: %s"  "'(1 2 3) 4 5" (str (conj '(1 2 3) 4 5))))

(println "count - retorna o total de itens da coleção")
(println (format "Func count: Input: %s; Resultado: %s"  "[]" (str (count []))))
(println (format "Func count: Input: %s; Resultado: %s"  "[1 2 3 4 5 6 7 8 9 10]" (str (count [1 2 3 4 5 6 7 8 9 10]))))

(println "dissoc - retorna um objeto map disassociando do map a relação de chave - valor passada.")
(println (format "Func dissoc: Input: %s; Resultado: %s"  "{:a 0 :b 5} :a 1" (str (dissoc {:a 0 :b 5} :a 0))))
(println (format "Func dissoc: Input: %s; Resultado: %s"  "{:a 0 :b 5} :c 15" (str (dissoc {:a 0 :b 5 :c 15} :c 15))))

(println "empty - retorna verdadeiro se a coleção for vazia")
(println (format "Func empty: Input: %s; Resultado: %s"  "empty? ()" (str (empty? ()))))
(println (format "Func empty: Input: %s; Resultado: %s"  "empty? '(algo)" (str (empty? '("algo")))))

(println "filter - aplica um filtro em uma coleção")
(println (format "Func filter: Input: %s; Resultado:"  "even? (range 5))")(filter even? (range 10)))
(println (format "Func filter: Input: %s; Resultado:"  "odd? (range 5))")  (filter odd? (range 10)))

(println "inc - incrementa ao valor passado como argumento")
(println (format "Func inc: Input: %s; Resultado: %s"  "1" (str (inc 1))))
(println (format "Func inc: Input: %s; Resultado: %s"  "99.9" (str (inc 99.9))))

(println "into - concatena os valores de duas colecoes")
(println (format "Func into: Input: %s; Resultado: %s"  "() '(1 2 3 4 5)" (str (into () '(1 2 3 4 5)))))
(println (format "Func into: Input: %s; Resultado: %s"  "[a b c d e] [f g h]" (str (into ["a" "b" "c" "d" "e"] ["f" "g" "h"]))))

(println "map - aplica uma função de modo que segue a relação entre os indices das duas coleções")
(println (format "Func map: Input: %s; Resultado:"  " + [1 2 3 4 5] [6 7 8 9 10]") (map + [1 2 3 4 5] [6 7 8 9 10]))
(println (format "Func map: Input: %s; Resultado:"  " - [1 2 3 4 5] [6 7 8 9 10]") (map - [1 2 3 4 5] [6 7 8 9 10]))

(println "nth - Retorna o valor que corresponde ao indice fornecido como parâmetro")
(println (format "Func nth: Input: %s; Resultado:"  "[1 2 3 4 5 6 7 8 9 10]") (nth [1 2 3 4 5 6 7 8 9 10] 4))
(println (format "Func nth: Input: %s; Resultado:"  "[1 2 3 4 5 6 7 8 9 10]") (nth [1 2 3 4 5 6 7 8 9 10] 0))

(println "odd - retorna true se o valor for impar")
(println (format "Func odd: Input: %s; Resultado: %s"  "10" (str (odd? 1))))
(println (format "Func odd: Input: %s; Resultado: %s"  "11" (str (odd? 2))))

(println "partition-by - retorna um agrupamento de acordo com a logica passada")
(println (format "Func partition-by: Input: %s; Resultado: "  "odd? [1 1 1 1 1 2 2 3 4 5 6]") (partition-by odd? [1 1 1 1 1 2 2 3 4 5 6]))
(println (format "Func partition-by: Input: %s; Resultado: "  "even? [1 1 1 1 1 2 2 3 4 5 6]") (partition-by even? [1 1 1 1 1 2 2 3 4 5 6]))

(println "range - cria uma sequencia de valores que se inicia em n e vai até m-1")
(println (format "Func range: Input: %s; Resultado: %s"  "10" (str (range 10))))
(println (format "Func range: Input: %s; Resultado: %s"  "50 76" (str (range 50 76))))

(println "sort - retorna uma ordenação dos itens da coleção")
(println (format "Func sort: Input: %s; Resultado: %s"  "[10 9 8 7 6 5]" (str (sort [10 9 8 7 6 5]))))
(println (format "Func sort: Input: %s; Resultado: %s"  " > [10 9 8 7 6 5]" (str (sort > [10 9 8 7 6 5]))))

;; 2. Utilizando a linguagem Clojure, crie uma função chamada ehPrimo que receba um inteiro e devolva True caso este inteiro seja verdadeiro e False caso contrário. 

(defn ehPrimo? [x] 
	(loop [cont 1 lista []]
                    (if (= cont (+ x 1)) (if (= (count lista) 2) true false)
                     (recur (inc cont) (if (zero? (mod x cont)) (conj lista cont) lista)))))

;; 3. Utilizando  a  linguagem  Clojure,  crie  uma  função  chamada  fatoresPrimos  que  receba  um inteiro e devolva uma lista dos seus fatores primos. Decomposição em fatores primos é uma tarefa fundamental da aritmética.  
(defn fatoresPrimos? [x] 
	(loop [cont 2 numero x lista []]
		(if (= numero 1) lista
			(recur (if (and (ehPrimo? cont) (zero? (mod numero cont))) 2 (inc cont)) (if (and (ehPrimo? cont) (zero? (mod numero cont))) (/ numero cont) numero) (if (and (ehPrimo? cont) (zero? (mod numero cont))) (conj lista cont) lista)))))



;; 4. Utilizando  a  linguagem  Clojure,  crie  uma  função  chamada  todosPrimos  que  receba  dois valores inteiros e devolve todos os números primos que existam entre estes dois valores.
(defn todosPrimos [x y] 
	(loop [lista (range x (+ y 1)) lista2 []]
		(if (empty? (rest lista)) lista2 (recur (rest lista) (if (ehPrimo? (nth lista 0)) (conj lista2 (nth lista 0)) lista2)))))

(println (format "Func2: Input: %s; Resultado: %s"  "75" (str (ehPrimo? 75))))
(println (format "Func3: Input: %s; Resultado: %s"  "75" (str (fatoresPrimos? 75))))
(println (format "Func4: Input: %s; Resultado: %s"  "30 75" (str (todosPrimos 30 75))))
