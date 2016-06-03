import Test.Hspec
import TypeTest

main = hspec $ do
    describe "checkEntry" $ do
        describe "checks an entry with expected words" $ do
            it "detect exact match" $ do
                entry "type these words" "type these words" `shouldBe` (3,3)

            it "detect exact match for any number of words" $ do
                entry "two words" "two words" `shouldBe` (2,2)

            it "detect partial match" $ do
                entry "only two words correct" "ony two orsd correct" `shouldBe` (2,4)

            it "detect partial match when not enough words" $ do
                entry "not enough words" "not enough" `shouldBe` (2, 3)
