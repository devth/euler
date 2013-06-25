{-
Take the number 192 and multiply it by each of 1, 2, and 3:

  192 × 1 = 192
  192 × 2 = 384
  192 × 3 = 576

By concatenating each product we get the 1 to 9 pandigital, 192384576. We will call
192384576 the concatenated product of 192 and (1,2,3)

The same can be achieved by starting with 9 and multiplying by 1, 2, 3, 4, and 5,
giving the pandigital, 918273645, which is the concatenated product of 9 and
(1,2,3,4,5).

What is the largest 1 to 9 pandigital 9-digit number that can be formed as the
concatenated product of an integer with (1,2, ... , n) where n > 1?
-}

isPandigital9 :: String -> Bool
isPandigital9 x = all (`elem` x) "192384576"

is9Digits :: String -> Bool
is9Digits x = length x == 9

is9DigitPandigital9 x = isPandigital9 x && is9Digits x

concatProducts x n = concat [show (x * y) | y <- [1..n]]

answer =
  let ps = filter is9DigitPandigital9 [concatProducts x y | x <- [1..11000], y <- [1..13]]
  in maximum $ (map read ps :: [Int])
