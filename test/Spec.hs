import Test.QuickCheck
import Test.Hspec
import Test.Hspec.QuickCheck
import Lib

main :: IO ()
main = hspec spec

spec:: Spec
spec = do
    describe "A fizz buzz game" $ do
        prop "returns FizzBuzz when number is multiple of 15" $
            forAll (multipleOf 15) $ \n -> fizzbuzz n `shouldBe` "FizzBuzz"
        prop "returns Fizz when number is multiple of 3 but not of 15" $
            forAll (multipleOf 3) $ \n -> fizzbuzz n `shouldBe` "Fizz"

multipleOf x = do
    n <- chooseInt (1, 100)
    return $ n * x

