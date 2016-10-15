{-
Write a function "filter" of type (a -> Bool) -> [a] -> [a]
which takes a predicate f of type (a -> Bool) and an input
list l of type [a], and returns a list of type [a], which
contains every element x of l such that f(x) is true.
-}

filter' f l = [x | x <- l, f x]

main = print (filter' even [1..10])
