main = solution

solution :: IO ()
solution = do 
	num <- getLine
	if read num == 42 
	then
		return ()
	else
		do putStrLn num
		   solution

--main :: IO ()
--main = interact f
--  where f = unlines . takeWhile (/="42") . words