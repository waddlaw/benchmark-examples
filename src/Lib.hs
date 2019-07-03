module Lib
  ( slowMapp
  , fastMapp
  ) where

slowMapp :: (a -> a) -> [a] -> [a]
slowMapp f []      = []
slowMapp f (x:xs)  = x : slowMapp f (map f xs)

fastMapp :: (a -> a) -> [a] -> [a]
fastMapp f xs = sub id xs
  where
    sub _  []     = []
    sub fa (x:xs) = fa x : sub (f . fa) xs