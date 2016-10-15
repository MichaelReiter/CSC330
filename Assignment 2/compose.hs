compose' f g = f . g

plusOne x = x + 1

double x = x * 2

main = print ((compose' plusOne double) 5)
