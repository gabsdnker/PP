--NOME: Gabrielli Danker 	CURSO: BCC       TURMA: 2022.2         MATÉRIA: PP

--1. Qual é o resultado da expressão abaixo? Por quê?
--(1 == 4 && True, mod (4*8) 31^2-5)
--RESPOSTA: (False,-4) porque 1 não é igual a 4 por isso deu como falso a expressão.

--2. Cite um valor matemático para o qual os operadores ** e ^ não apresentam o mesmo comportamento.
--RESPOSTA: 2^2.5 -> ERRO        2**2.5 -> 5.65..

--3.Crie a função dobro (dobro :: Double -> Double), que deve retornar o dobro de um número.
dobro :: Double -> Double
dobro x = x + x

--4.Crie as funções incremento e decremento, que devem adicionar e remover 1 a um valor, respectivamente.
--RESPOSTA:
incremento :: Int -> Int
incremento x= x + 1

decremento :: Int -> Int
decremento x= x - 1

--5.Interprete o comando abaixo:
--decremento (incremento 9) :: Num a => a
--main :t decremento (incremento 9)
--RESPOSTA: está chamando o comando de tipo da função decremento. O retorno e o tipo (númerico) que a função aceita receber, e o tipo que será rertornado.

--6.Implemente a função sobeDesce (sobeDesce :: (Num t, Num t) => (t, t)-> (t, t)). Esta função recebe um par ordenado e devolve um par ordenado com o primeiro valor somado a 1 e o segundo valor subtraído a 1.
--RESPOSTA: 
sobeDesce (x,y) = (x + 1, y - 1)

--7.Implemente a função sobeDesce2, semelhante à questão anterior, mas utilizando as funções incremento e decremento.
--RESPOSTA:
sobeDesce2 (x, y) = (incremento(x), decremento(y))

--8.Implemente a função trocaValor (a, b), que deve inverter os valores de a e b no par ordenado.
--RESPOSTA: 
trocaValor (x, y) = (y, x)

--9.A função negate (negate :: Num a => a -> a) serve para mudar o sinal de um número. Crie um exemplo válido utilizando esta função.
--RESPOSTA: negative (-9) -> 9

--10.Um programador iniciante está aprendendo Haskell e decidiu tentar resolver a lista do professor Ricardo. Ele tentou resolver o exercício 9, mas não obteve sucesso e disse que a lista do professor é impossível. O código dele encontra-se abaixo. Sua tarefa é explicar ao programador por que ele obteve erro.
--RESPOSTA: S função negate aceita somente  o  "-". Para funcionar são necessários parênteses "(-8)".
