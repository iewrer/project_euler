main :: IO ()
main = print (nextfibo 1 2 4000000 2)

--每次在原地展开，获得新的fibonacci数
--如果该数 > limit，则将累积结果返回
--否则，继续原地向后展开，并将新的累积结果继续往下传递（若当前fibonacci数能被2整除，则累加之，否则为原值）

--使用if表达式完成的写法
nextfibo :: Integer -> Integer -> Integer -> Integer -> Integer
nextfibo n m limit amount = 
    if (n + m) < limit 
    then nextfibo m (n + m) limit 
        (if (n + m) `mod` 2 == 0
        then amount + n + m 
        else amount)
    else amount

--使用模式匹配完成的更优雅的写法
nextfibo1 :: Integer -> Integer -> Integer -> Integer -> Integer
nextfibo1 n m limit amount
    | ((n + m) < limit && (n + m) `mod` 2 == 0) = nextfibo1 m (n + m) limit amount + n + m
    | ((n + m) < limit && (n + m) `mod` 2 /= 0) = nextfibo1 m (n + m) limit amount
    | otherwise = amount