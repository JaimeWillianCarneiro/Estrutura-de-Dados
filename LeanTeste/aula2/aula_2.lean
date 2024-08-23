structure Point where
  x: Float
  y: Float
deriving Repr

--  Ele pega a expressão e vê o se stá bem formado (entrada >saida)
#check String.append
#check String.append "Hello,  "

--  as saidaa devem ser do mesmo tipo
#eval String.append "it  is " (if 1 > 2 then "yes" else "no")
#eval Point.mk 1 2
--  produz um tipo que não foi mostrado
-- #eval String.append "it is"
#eval ({ x := 1, y:= 2} : Point)

def origin : Point := { x := 0.0, y := 0.0 }

#eval origin.x

def addPoints (p1 : Point) (p2 : Point) : Point :=
  { x := p1.x + p2.x, y := p1.y + p2.y }

def zeroX1 (p : Point) : Point :=
  { x := 0, y := p.y }


def zeroX2 (p : Point) : Point :=
  { p with x := 0 }


def fourAndThree : Point :=
  { x := 4.3, y := 3.4 }

#eval fourAndThree

#eval zeroX1 fourAndThree
#eval fourAndThree
