module Fp.RecursionSpec (main, spec) where

import Control.Exception (evaluate)
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

    describe "fibb 0" $ do
                it "should be 0" $ do
                    fibb 0 `shouldBe` 0

    describe "fibb 1" $ do
                it "should be 1" $ do
                    fibb 1 `shouldBe` 1

    describe "fibb 2 and next" $ do
                it "should be computed according to formula" $ do
                    map (\x -> fibb x) [2..8] `shouldBe` [1, 2, 3, 5, 8, 13, 21]

    describe "fibb" $ do
                    it "should work for big input" $ do
                        fibb 43 `shouldBe` 433494437

    describe "maxList" $ do
                    it "should throw error for an empty list" $ do
                        evaluate (maxList []) `shouldThrow` errorCall "maximum of empty list"

    describe "maxList" $ do
                    it "should work" $ do
                        map (\x -> maxList x) examples `shouldBe` [1, 4, 4, 9]
                        where
                        examples = [
                              [1],
                              [1, 2, 3, 4],
                              [1, 4, 3, 4],
                              [9, 4, 3, 4]
                             ]



