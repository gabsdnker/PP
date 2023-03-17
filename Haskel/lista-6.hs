--NOME: Gabrielli Danker    DATA: 22/11/2022    MATÉRIA: Paradigmas em Programação      CURSO: BCC      TURMA: 2022.2

--1.Crie uma função para calcular a área de uma circunferência. Teste a função anterior utilizando let.
--RESPOSTA:
areaDeCircunferencia  r = (pi * r * r)

--2.Crie uma função que receba três medidas a, b e c, correspondentes aos lados de um triângulo, e imprima o tipo do triângulo (escaleno, isósceles ou equilátero) ou NAOTRI quando aquelas medidas não formam um triângulo.
--RESPOSTA:
triangulo :: Integer -> Integer -> Integer -> Bool
triangulo a b c   | (a + b) > c && (a + c) > b && (c + b) > a = True 
                  | otherwise = False 

tipoTriangulo :: Integer -> Integer -> Integer -> [Char]
tipoTriangulo x y z | triangulo x y z == False = "Nao e triangulo"
                    | (x == y) && (x == z) = "equilatero"
                    | (x == y) || (z == y) || (x == z) = "isosceles"
                    | otherwise = "escaleno"

--3.Utilizando recursividade, crie a função multiplica x y.
--RESPOSTA: 
multiplica :: Int -> Int -> Int
multiplica x y
    | y == 0 = 0
    | y > 0 = x + multiplica x (y-1)

--4.E se você pudesse supor que x e y sempre serão naturais (não negativos)? Faça multiplicaNaturais x y, também recursiva.
--RESPOSTA:
multiplicaNaturais :: Int -> Int -> Int
multiplicaNaturais x y
    | y == 0 = 0
    | y > 0 = x multiplicaNaturais x (y-1)
    | otherwise = negate (multiplicaNaturais x (negate y)) 

--5.Crie as funções menor e maior, que devem receber três valores e indicar menor e maior valor, respectivamente. (EXTRA) Defina a função maior utilizando a função menor, ou o contrário.
--RESPOSTA:
maior :: Int -> Int -> Int -> Int
maior a b c | a >= b && a >= c = a
            | b >= c = b
            | otherwise = c
        
menor :: Int -> Int -> Int -> Int
menor x y z | x <= y && x <= z = x
            | y <= z = y
            | otherwise = z  
 
--6.Crie a função XOR (também conhecida como “ou exclusivo”). Esta função retorna True se duas expressões forem diferentes (uma True e a outra False).
--RESPOSTA:
xor :: Bool -> Bool -> Bool
xor x y | x == True && y == False = True
        | x == False && y == True = True
        | otherwise = False

--7.Crie a função clonaNumeros, que deve receber uma lista e duplicar cada valor recebido nela. Ex: [1,2,3] deve retornar [1,1,2,2,3,3].
--RESPOSTA:
clonaNumeros :: [int] -> [int]
clonaNumeros [] = []
clonaNumeros (x:xs) = x:x:(clonaNumeros xs)

--8.Crie uma função que receba uma lista e some os dois primeiros valores da lista.
--RESPOSTA:
remove 0 list = list
remove _ [] = []
remove n(a:x) = remove (n-1) x

--9.Crie uma função que receba um número e crie uma lista de 0 até o valor absoluto deste número. Ex: -9 deve retornar [0,1,2,3,4,5,6,7,8,9], 0 deve retornar [0] e etc.
--RESPOSTA:
criarLista n = [x | x<-[0..n] ]

--10.Crie a função parOuImpar, que recebe uma lista de valores e retorna uma lista booleana com True quando o valor for par e False quando o valor for ímpar. Exemplo: [1, 2, 3] retorna [False, True, False].
--RESPOSTA:
parOuImpar [] = []
parOuImpar (x:xs)
   |mod x 2 == 0 = [True] ++ parOuImpar xs
   |otherwise = [False] ++ parOuImpar xs

--11.Crie a função soPar, que remove todos os números ímpares da lista.
--RESPOSTA:
soPar [] = []
soPar (x:xs) = if mod x 2 == 0 then [x] ++ soPar xs else soPar xs

--12.Crie uma função soMinusculas, que recebe uma lista [Char], ou String, e retorna somente as letras minúsculas.
--RESPOSTA:
soMinusculas [] = []
soMinusculas (x:xs) = filter (isLower) [x] ++ soMinusculas xs

--13.Crie a função substituiVogais :: [Char] -> [Char], que recebe uma palavra e substitui as vogais minúsculas por maiúsculas. Exemplos: “oi” retorna “OI”, “Ricardo” retorna “RIcArdO”.
--RESPOSTA:
substituiVogais :: [Char] -> [Char]
substituiVogais [] = []
substituiVogais (x:xs) 
   |elem x "aeiou" = map (toUpper) [x] ++ substituiVogais xs
   |otherwise = [x]++ substituiVogais xs

--14.Crie um comando que receba uma lista de Strings e acrescente a String “ Friboi”  a todas elas. Exemplo: entrada [“Joao”, “Maria”, “oi”] → saída [“Joao Friboi”, “Maria Friboi”, “oi Friboi”].
--RESPOSTA:
friboi [] = []
friboi (x:xs) = [x ++ " Friboi"] ++ friboi xs

--15.Declare a função pertence, que deve receber um valor e uma lista como parâmetros. A função deve verificar se o valor pertence à lista.
--RESPOSTA:
pertence _[] = False
pertence n xs 
   |(filter (==n) xs)== [] = False
   |otherwise = True

--16.Declare a função filtraLista, que deve eliminar valores repetidos da lista.
--RESPOSTA:
filtraLista [] = []
filtraLista [x] = [x]
filtraLista (x:xs) = x:(filtraLista $ filter (/=x) xs)

--17.Declare uma função que retorne os n primeiros elementos de uma lista.
--RESPOSTA:
Lista n (x:xs)
   |n == 0 = []
   |n == 1 = [x]
   |n > length(x:xs) = (x:xs)
   |n > 1 = [x] ++ Lista (n-1) xs
   |otherwise = error "Numero negativo"

--18.Utilizando compreensão de lista, crie uma lista contendo os valores múltiplos de 3 no intervalo entre 0 e 300, inclusive.
--RESPOSTA:  [ x | x <- [0..300], x `mod`3 == 0 ]
