module Fp.ParabolicSpec (main, spec) where

import Control.Exception (evaluate)
import Test.Hspec
import Fp.Parabolic

main :: IO ()
main = hspec spec

spec :: Spec
spec = do

    describe "for a=2 b=-2 c=0" $ do
        it "should return 2 roots" $ do
            findRoots 2 (-3) 0 `shouldBe` [0.0, 1.5]

    describe "for a=2 b=-4 c=2" $ do
            it "should return 1 root" $ do
                findRoots 2 (-4) 2 `shouldBe` [1.0]

    describe "for a=2 b=-4 c=2" $ do
                it "should return 1 root" $ do
                    findRoots (-5) 6 (-2) `shouldBe` []

