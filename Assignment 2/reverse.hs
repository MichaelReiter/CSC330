{-
Write a function "reverse" that takes an input list l
and returns another list that is the reversal of l.
What is the most general polymorphic type of "reverse"? 
-}

reverse' l =  rev l []
  where
    rev []     a = a
    rev (x:xs) a = rev xs (x:a)

main = print (reverse' [1..5])
