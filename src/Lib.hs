module Lib
    ( someFunc,
    fizzbuzz
    ) where

someFunc :: IO ()
someFunc = putStrLn "someFunc"

fizzbuzz :: Int -> String
fizzbuzz a = if rem a 15 == 0 then "FizzBuzz" else "Fizz"
