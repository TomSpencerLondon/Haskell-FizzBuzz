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
            forAll ((arbitrary :: Gen Int) `suchThat` (\n -> rem n 15 == 0)) $ \n -> fizzbuzz n `shouldBe` "FizzBuzz"
        prop "returns Fizz when number is multiple of 3 but not of 15" $
            forAll ((arbitrary :: Gen Int) `suchThat` (\a -> rem a 3 == 0 && rem a 15 /= 0)) $ \n -> fizzbuzz n `shouldBe` "Fizz"


