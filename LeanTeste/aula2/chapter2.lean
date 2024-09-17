import data.list.basic

namespace Chapter2

#eval List.append [1, 2, 3] [4, 5, 6]
#eval List.head! (List.iota 1000)



def concat0  : List (List a) → List a
  | [] => []
  | (xs :: xss) => xs  ++ concat0 xss


def concat2 {a : Type} : List (List a) → List a :=
 List.foldl List.append []



def iterate: Nat -> (a -> a ) -> a -> a
  | 0, _,x => x

  | Nat.succ n, f, x => iterate n f (f x)



def bits ( n: Nat) : List  Bool  :=
  iterate n inc []
  where
    inc: List Bool-> List Bool

    | [] => [true]
    | (false::bs) => true ::bs
    |(true::bs) => false :: inc bs


#eval List.foldr
  ( fun b s => if b then "1" ++ s else "0" ++ s) ""
  $ List.reverse $ bits 345



partial def until' (p: a → Bool) (f: a → a) (x : a) : a :=
  if p x then x
  else until' p f (f x)



def init : List a -> Option ( List a)
  |[] => none
  |[_] =>  some []
  | x:: xs =>
    match  init xs with
      |none => none

      |some ys => some (x::ys)



def init₁ : List a -> Option (List a)
  | []  => none
  | [_] => some []
  | x::xs => init' xs >>= (fun ys => pure (x::ys))

def prune :  (p: List a -> Bool) (x: List a): List  a  :=
  List.foldr cut [] xs
  where
    cut x xs := until' done init (x::xs)
    done (xs : List a) := xs.isEmpty

  foldr cut []


-- def ordered :List Nat -> Bool
-- | [] => true
-- | [_] => true


def dropWhile: (p : α → Bool) ->  (xs: List α) -> List α
  | _ ,[] => []
  | pred , x::xs => if pred x then dropWhile pred xs  else x::xs

#eval dropWhile (. <3) [1,2,3, 4]
#eval dropWhile (. <3) []

-- def uncons : (xs : List α) ->  Option (α × List α)
--     | [] => []
def reverse: (a : List α) -> List α
  reverseAux []
  where
    reverseAux acc [] = acc
    reverseAux acc (x::xs) =reverseAux (x::xs) xs

example : (foldr f e) ∘ (filter p) = foldr ???? := sorry



def foldr {a b : Type} : (a → b → b) → b → List a → b
| _, e, [] => e
| f, e, (x::xs) => f x (foldr f e xs)



def takeWhile: (xs : List α) -> (p : α → Bool) ->  List α
  p = foldr step []
  where
    step x acc
    | p x => x:: acc
    | some => []


-- def steep₁ (xs : List Nat) : Bool := sorry
#eval sum [1, 2]
