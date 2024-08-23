# Informações

- ####  Algorithm Design with Haskell, Jeremy Gibbons & Richard S. Bird (https://www.cs.ox.ac.uk/publications/books/adwh/)

- #### Functional Programming in Lean (https://lean-lang.org/functional_programming_in_lean/)

- #### The Hitchhiker's Guide to Logical Verification

- #### Haskell ou Lean

## Avaliação
- Trabalhos em grupo (provavelmente)

# Lean

- https://live.lean-lang.org/
- https://lean-lang.org
- https://lean-lang.org/functional_programming_in_lean/ (cap 1 e 2)
- https://leanprover-community.github.io

```lean
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

#print theyarethesame
```

### ERRO: Cannot initialize project. Command output: error: could not detect the configuration of the Lake installation