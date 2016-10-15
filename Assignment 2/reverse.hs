reverse' l =  rev l []
  where
    rev []     a = a
    rev (x:xs) a = rev xs (x:a)

main = print (reverse' [1..5])
