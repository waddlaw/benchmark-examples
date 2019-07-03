import Criterion.Main
import Criterion.Types
import Lib

genList :: Int -> [Int]
genList n = [1..n*10^3]

main :: IO ()
main =
  defaultMainWith (defaultConfig {reportFile=Just "./report.html"})
    [ bgroup "fastMapp"
        [ bench "n=1000" $ nf (fastMapp id) (genList 1)
        , bench "n=2000" $ nf (fastMapp id) (genList 2)
        , bench "n=3000" $ nf (fastMapp id) (genList 3)
        , bench "n=4000" $ nf (fastMapp id) (genList 4)
        , bench "n=5000" $ nf (fastMapp id) (genList 5)
        , bench "n=6000" $ nf (fastMapp id) (genList 6)
        , bench "n=7000" $ nf (fastMapp id) (genList 7)
        , bench "n=8000" $ nf (fastMapp id) (genList 8)
        ]
    , bgroup "slowMapp"
        [ bench "n=1000" $ nf (slowMapp id) (genList 1)
        , bench "n=2000" $ nf (slowMapp id) (genList 2)
        , bench "n=3000" $ nf (slowMapp id) (genList 3)
        , bench "n=4000" $ nf (slowMapp id) (genList 4)
        , bench "n=5000" $ nf (slowMapp id) (genList 5)
        , bench "n=6000" $ nf (slowMapp id) (genList 6)
        , bench "n=7000" $ nf (slowMapp id) (genList 7)
        , bench "n=8000" $ nf (slowMapp id) (genList 8)
        ]
    ]