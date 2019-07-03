module Input (ts, slow, fast) where

import Data.Default         (def)
import AutoBench.Types      (DataOpts(..), TestSuite(..))

slow :: [Int] -> [Int]
slow = slowMapp id

fast :: [Int] -> [Int]
fast = fastMapp id

slowMapp :: (a -> a) -> [a] -> [a]
slowMapp f []      = []
slowMapp f (x:xs)  = x : slowMapp f (map f xs)

fastMapp :: (a -> a) -> [a] -> [a]
fastMapp f xs = sub id xs
  where
    sub _  []     = []
    sub fa (x:xs) = fa x : sub (f . fa) xs

genList :: Int -> [Int]
genList n = [1..n*10^3]

ts :: TestSuite
ts  = def { _dataOpts = Gen 0 500 10000 }