{-

If p is the perimeter of a right angle triangle with integral length sides,
{a,b,c}, there are exactly three solutions for p = 120.

{20,48,52}, {24,45,51}, {30,40,50}

For which value of p ≤ 1000, is the number of solutions maximised?
-}

import Data.Function
import Data.List

type Perimeter = (Int, Int, Int)

-- brute force - doesn't complete for the entire range
brutePerimeters :: Int -> [Perimeter]
brutePerimeters p =
  let s = quot p 2
  in [(a,b,c) | c <- [1..s], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2, a+b+c == p]

-- brute answer
-- answer =
--   head $ sortBy (compare `on` length) $
--   filter (not.null) $ map perimeters [2,4..1000]

-- arithmetic
aPerimeters :: Int -> Int
aPerimeters p =
  let a = quot p 3
  in length [a | a <- [2..((quot p 3) -1)], (p*(p-2*a) `mod` (2*(p-a)) == 0)]

-- only need to check even perimeters
answer = maximumBy (compare `on` snd) $ map (\x -> (x, aPerimeters x)) [2,4..1000]

main = print answer
