{- 
  Concatenate 2 lists
-}

concat1 l1 l2 =
  if l1 == []
    then l2
  else
    (head l1) : (concat1 (tail l1) l2)

concat2 [] l2 = l2
concat2 (x:xs) l2 =
  x : (concat2 xs l2)

main =
  print (concat1 [1, 2] [3, 4])
  -- print (concat2 [1, 2] [3, 4])
