main = solution

solution :: IO ()
solution = do
    num <- getLine
    printPrime (read num)

printPrime :: Integer -> IO ()
printPrime 0 = return ()
printPrime num = do
    range <- getLine
    mapM_ print (prime_generator (read (head (words range))) (read (last (words range))))
    printPrime (num - 1)

prime_generator :: Integer -> Integer -> [Integer]
prime_generator m n
    | m > n =[]
    | m < 0 =[]
    | n < 0 =[]
    | otherwise =[x | x <- [m..n], prime x]

prime :: Integer -> Bool
prime 0 = False
prime 1 = False
prime x = foldl (\acc y -> (mod x y /= 0) && acc) True [2..floor (sqrt (fromIntegral x))]