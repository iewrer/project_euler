main :: IO ()
main = do
	print (foldl (\acc x -> acc + x) 0 [ x | x <- [1..1000], (mod x 3 == 0) || (mod x 5 == 0), x /= 1000 ])
