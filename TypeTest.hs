module TypeTest
where

type Score = (Int, Int)

entry :: String -> String -> Score
entry s t = (length r, length (words s))
    where r = filter id $ zipWith (==) (words t) (words s)


