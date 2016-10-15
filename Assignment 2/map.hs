{-
Write a function "map" of type  (a -> b) -> [a] -> [b]
that takes a function f of type (a -> b) and an input list l 
of type [a], and returns a list of type [b] which is the
result after applying f to every element of the input list l.
-}

square x = x * x

map' fn xs =
  [fn x | x <- xs ]

main = print (map' square [1..10])
