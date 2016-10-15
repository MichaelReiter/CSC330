{-
Write a function "compose" which takes two functions
(of compatible types) f and g, and returns a function
which is a function composition of f and g. This is an
example of a function that computes a function as the result.
-}

compose' f g = f . g

plusOne x = x + 1

double x = x * 2

main = print ((compose' plusOne double) 5)
