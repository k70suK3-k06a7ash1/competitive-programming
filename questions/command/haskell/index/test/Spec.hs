import Test.Hspec

import Lib (command)
import Judge 
import Command 

main :: IO ()
main = hspec $ do
  describe "Case1" $ do
    it "All Perfect" $ do
      command [Command.perfect] `shouldBe` Judge.perfect
    it "Full Combo" $ do
      command [Command.perfect,Command.great] `shouldBe` Judge.fullCombo
    it "Full Combo" $ do
      command [Command.perfect,Command.great,Command.good, Command.bad] `shouldBe` Judge.failed