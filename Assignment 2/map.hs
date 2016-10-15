square x = x * x

map' fn xs =
  [fn x | x <- xs ]

main = print (map' square [1..10])
