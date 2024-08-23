import LeanTeste

def main : IO Unit :=
  IO.println s!"Hello, {hello}!"

variable (α : Type)

inductive Tree α where
  | node α (t1 : Tree α) (t2 : Tree α)
  | empty

def teste (n : Nat) : Nat :=
  n + 10

def teste' : Nat -> Nat
  | n => n + 10

#eval teste 10
#check teste

theorem theyarethesame : ∀ x, teste x = teste' x := sorry
  intro x
  simp [teste, teste']
  done

#eval 1 + 2 * 5

#eval String.append "A" (String.append "B" "C")
#print theyarethesame
#eval String.append "it is " (if 1 > 2 then "yes" else "no")
#check String.append
