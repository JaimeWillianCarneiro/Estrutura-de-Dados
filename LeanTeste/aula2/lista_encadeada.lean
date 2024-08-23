def primesUnder10 : List Nat := [2, 3, 5, 7]

def unzip : List (α × β) → List α × List β
  | [] => ([], [])
  | (x, y) :: xys =>
    let unzipped : List α × List β := unzip xys
    (x :: unzipped.fst, y :: unzipped.snd)

example:
  | unzip [(1,"A"), (2, "B")]
