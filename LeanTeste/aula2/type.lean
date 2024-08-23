
#eval (1 - 2 : Int)
#eval (1 - 2 : Nat)

def hello := "world"

def Str : Type := String

def aStr : Str := "this is a strings"

#check aStr


def NaturalNumber : Type := Nat




def MyNumber : Type := Float
-- def ThirtyEight : MyNumber := 38
def ThirtyEight_1 : MyNumber := (38: Float)
#check ThirtyEight_1

