-- Ao criar uma variavel, alocamos um espaço na memoria (labeL)

--  Variavel (valor, localização, tamanho) // em outras

--  As variaveis no lean são imutaveis, ou seja é um apelido para uma expressão
def hello : String := "Hello"

#eval String.append hello (String.append " " hello)

--  Pegando o namespace STrin e abrindo (com in , isso só vale para proxima expressão)
-- open String in

section teste
open String
def joinStringsWith ( a b c : String) : String :=
  b.append (a.append c)

#eval joinStringsWith " , " " one " "and another"
end teste

def volume : Nat -> Nat -> Nat -> Nat := fun x y z => x*y*z

def volume1 (a b c : Nat) : Nat := a * b *c

def volume2 : Nat -> Nat -> Nat -> Nat
  | 0, _, _ -> 0
  | x,y,x -> x*y*z
