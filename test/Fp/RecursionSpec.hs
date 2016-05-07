module Fp.RecursionSpec (main, spec) where

import Test.Hspec
import Fp.Recursion

-- `main` is here so that this module can be run from GHCi on its own.  It is
-- not needed for automatic spec discovery.
main :: IO ()
main = hspec spec

spec :: Spec
spec = do

    describe "factorial 0" $ do
        it "should be 1" $ do
            factorial 0 `shouldBe` 1

    describe "factorial 1" $ do
        it "should be 1" $ do
            factorial 1 `shouldBe` 1

    describe "factorial 2" $ do
        it "should be 2" $ do
            factorial 2 `shouldBe` 2

    describe "factorial 4" $ do
        it "should be 24" $ do
            factorial 4 `shouldBe` 24

    describe "factorial 14" $ do
            it "should be 87178291200" $ do
                factorial 14 `shouldBe` 87178291200

