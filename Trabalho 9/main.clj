;;Gabriel Luiz Tokarski Soto
;;1 - Utilizando  a  linguagem  Clojure,  crie  uma  função  chamada  ultimo  que  receba  uma  lista  e devolva o último elemento desta lista sem usar as funções já prontas e disponíveis para esta mesma finalidade na linguagem Clojure.
(defn ultimo[lista] (reduce (fn [x, xs] xs) lista))

;;2 - Utilizando a linguagem Clojure, crie uma função chamada penultimo que receba uma lista e  devolva  o  penúltimo  elemento  desta  lista  usar as  funções  já  prontas  e disponíveis para esta mesma finalidade na linguagem Clojure. 
(defn penultimo [lista] (reduce (fn [x xs] xs) (pop lista)))

;;3 - Utilizando a linguagem Clojure, crie uma função chamada elementoN que receba uma lista e um inteiro N e devolva o  elemento que  está na  posição N desta lista usar as funções já prontas e disponíveis para esta mesma finalidade na linguagem Clojure.
(defn elementoN [lista n] (loop [cont n auxList lista] (if (zero? cont) (first auxList) (recur (dec cont) (rest auxList)))))

;;4 - Utilizando  a  linguagem Clojure,  crie  uma função  chamada  inverso  que  receba uma  lista  e devolva esta lista com as posições dos elementos invertidas. Por exemplo recebe [1,2,3] e devolve [3,2,1]. Sem usar as funções já prontas e disponíveis para esta mesma finalidade na linguagem Clojure.
(defn inverso [lista] (reduce conj '() lista))

;;5 - Utilizando a  linguagem Clojure, crie uma função chamada  mdc que receba  dois inteiros e devolve o mínimo divisor comum entre eles.  Sem usar as funções já prontas e disponíveis para esta mesma finalidade na linguagem Clojure.
(defn mdc [x y] (if (zero? y) x (recur y (mod x y))))

(println (format "Func1: Input: %s; Resultado: %s"  "[1 1 2 3 5 8 13 21 34]" (str (ultimo [1 1 2 3 5 8 13 21 34]))))

(println (format "Func2: Input: %s; Resultado: %s"  "[1 1 2 3 5 8 13 21 34]" (str (penultimo [1 1 2 3 5 8 13 21 34]))))

(println (format "Func3: Input: %s; Resultado: %s"  "[1 1 2 3 5 8 13 21 34] 5" (str (elementoN [1 1 2 3 5 8 13 21 34] 5))))

(println (format "Func4: Input: %s; Resultado: %s"  "[1 1 2 3 5 8 13 21 34]" (str (inverso [1 1 2 3 5 8 13 21 34]))))

(println (format "Func5: Input: %s; Resultado: %s"  "30 75" (str (mdc 30 75))))
