module Lib
    ( someFunc,
    fizzbuzz
    ) where

someFunc :: IO ()
someFunc = putStrLn "someFunc"

fizzbuzz :: Int -> String
fizzbuzz a = case a of _
                            | rem a 15 == 0 -> "FizzBuzz"
                            | rem a 3 == 0 -> "Fizz"
                            | otherwise -> "Buzz"

