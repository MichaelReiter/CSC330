filter' f l = [x | x <- l, f x]

main = print (filter' even [1..10])
