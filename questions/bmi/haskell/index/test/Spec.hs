import Test.Hspec
import Lib (calc, rate)

main :: IO ()
main = hspec $ do
  describe "Index.calc" $ do
    it "calculates BMI for height 170 and weight 65" $ do
      calc 170 65 `shouldBe` 22

    it "calculates BMI for height 180 and weight 80" $ do
      calc 180 80 `shouldBe` 25

  describe "Index.rate" $ do
    it "rates BMI of 19 as A" $ do
      rate 19 `shouldBe` "A"

    it "rates BMI of 22 as B" $ do
      rate 22 `shouldBe` "B"

    it "rates BMI of 26 as C" $ do
      rate 26 `shouldBe` "C"