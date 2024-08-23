structure Point (α : Type) where
  x : α
  y : α
deriving Repr



def p := Point.mk 1 (2: Float)
def natOrigin : Point Nat :=
  { x := Nat.zero, y := Nat.zero }

def replaceX {α: Type} (point: Point α ) (newX : α) : Point α :=
  {point with x := newX}

#check replaceX
#check (replaceX)


inductive Sign where
  | pos
  | neg
def posOrNegThree (s : Sign) : match s with | Sign.pos => Nat | Sign.neg => Int :=
  match s with
  | Sign.pos => (3 : Nat)
  | Sign.neg => (-3 : Int)
#eval posOrNegThree Sign.pos
#check posOrNegThree Sign.pos
