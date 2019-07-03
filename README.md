# mapp

## Gauge

```shell
λ stack bench mapp:gauge
fastMapp/n=1000                          mean 5.094 ms  ( +- 779.5 μs  )
fastMapp/n=2000                          mean 21.00 ms  ( +- 2.365 ms  )
fastMapp/n=3000                          mean 66.22 ms  ( +- 3.764 ms  )
fastMapp/n=4000                          mean 148.6 ms  ( +- 35.88 ms  )
fastMapp/n=5000                          mean 235.6 ms  ( +- 13.65 ms  )
fastMapp/n=6000                          mean 380.6 ms  ( +- 22.57 ms  )
fastMapp/n=7000                          mean 513.7 ms  ( +- 17.01 ms  )
fastMapp/n=8000                          mean 715.7 ms  ( +- 45.56 ms  )

slowMapp/n=1000                          mean 13.89 ms  ( +- 3.436 ms  )
slowMapp/n=2000                          mean 100.7 ms  ( +- 27.57 ms  )
slowMapp/n=3000                          mean 250.1 ms  ( +- 57.21 ms  )
slowMapp/n=4000                          mean 428.5 ms  ( +- 18.82 ms  )
slowMapp/n=5000                          mean 752.9 ms  ( +- 74.60 ms  )
slowMapp/n=6000                          mean 1.033 s   ( +- 104.8 ms  )
slowMapp/n=7000                          mean 1.560 s   ( +- 183.5 ms  )
slowMapp/n=8000                          mean 2.087 s   ( +- 175.9 ms  )
```

## Criterion

- [レポート](./report.html) に詳しい内容が出力される。

```shell
λ stack bench mapp:criterion
Benchmark criterion: RUNNING...
benchmarking fastMapp/n=1000
time                 5.020 ms   (4.309 ms .. 5.617 ms)
                     0.776 R²   (0.548 R² .. 0.960 R²)
mean                 6.241 ms   (5.606 ms .. 7.626 ms)
std dev              2.480 ms   (899.7 μs .. 4.223 ms)
variance introduced by outliers: 97% (severely inflated)
                  
benchmarking fastMapp/n=2000
time                 21.60 ms   (18.70 ms .. 26.22 ms)
                     0.822 R²   (0.701 R² .. 0.948 R²)
mean                 29.55 ms   (25.59 ms .. 35.57 ms)
std dev              11.17 ms   (8.401 ms .. 15.49 ms)
variance introduced by outliers: 94% (severely inflated)
                  
benchmarking fastMapp/n=3000
time                 128.1 ms   (102.6 ms .. 160.7 ms)
                     0.939 R²   (0.895 R² .. 0.995 R²)
mean                 97.36 ms   (87.68 ms .. 112.8 ms)
std dev              19.10 ms   (10.33 ms .. 30.14 ms)
variance introduced by outliers: 65% (severely inflated)
                  
benchmarking fastMapp/n=4000
time                 123.0 ms   (70.38 ms .. 201.5 ms)
                     0.819 R²   (0.413 R² .. 0.999 R²)
mean                 146.3 ms   (131.2 ms .. 171.2 ms)
std dev              28.70 ms   (13.50 ms .. 41.89 ms)
variance introduced by outliers: 55% (severely inflated)
                  
benchmarking fastMapp/n=5000
time                 211.6 ms   (206.2 ms .. 215.8 ms)
                     1.000 R²   (0.998 R² .. 1.000 R²)
mean                 213.4 ms   (211.4 ms .. 215.2 ms)
std dev              2.662 ms   (1.686 ms .. 3.505 ms)
variance introduced by outliers: 14% (moderately inflated)
                  
benchmarking fastMapp/n=6000
time                 583.0 ms   (181.0 ms .. 863.5 ms)
                     0.933 R²   (0.857 R² .. 1.000 R²)
mean                 524.5 ms   (423.5 ms .. 588.4 ms)
std dev              98.72 ms   (45.57 ms .. 126.9 ms)
variance introduced by outliers: 47% (moderately inflated)
                  
benchmarking fastMapp/n=7000
time                 711.8 ms   (190.7 ms .. 1.304 s)
                     0.923 R²   (0.783 R² .. 1.000 R²)
mean                 576.3 ms   (476.8 ms .. 710.5 ms)
std dev              128.4 ms   (59.25 ms .. 161.4 ms)
variance introduced by outliers: 48% (moderately inflated)
                  
benchmarking fastMapp/n=8000
time                 647.3 ms   (548.1 ms .. 768.9 ms)
                     0.996 R²   (0.986 R² .. 1.000 R²)
mean                 627.7 ms   (609.3 ms .. 644.1 ms)
std dev              23.21 ms   (10.38 ms .. 32.07 ms)
variance introduced by outliers: 19% (moderately inflated)
                  
benchmarking slowMapp/n=1000
time                 11.97 ms   (11.78 ms .. 12.17 ms)
                     0.997 R²   (0.994 R² .. 0.999 R²)
mean                 11.98 ms   (11.86 ms .. 12.12 ms)
std dev              359.4 μs   (288.0 μs .. 467.7 μs)
variance introduced by outliers: 10% (moderately inflated)
                  
benchmarking slowMapp/n=2000
time                 133.3 ms   (68.52 ms .. 230.6 ms)
                     0.627 R²   (0.399 R² .. 0.995 R²)
mean                 88.78 ms   (65.98 ms .. 125.4 ms)
std dev              46.39 ms   (4.726 ms .. 62.13 ms)
variance introduced by outliers: 88% (severely inflated)
                  
benchmarking slowMapp/n=3000
time                 498.7 ms   (231.4 ms .. 756.1 ms)
                     0.930 R²   (0.854 R² .. 1.000 R²)
mean                 276.4 ms   (197.0 ms .. 373.2 ms)
std dev              111.7 ms   (84.31 ms .. 137.1 ms)
variance introduced by outliers: 79% (severely inflated)
                  
benchmarking slowMapp/n=4000
time                 1.188 s    (393.8 ms .. 1.596 s)
                     0.951 R²   (0.846 R² .. 1.000 R²)
mean                 775.4 ms   (562.9 ms .. 933.7 ms)
std dev              221.0 ms   (80.07 ms .. 285.4 ms)
variance introduced by outliers: 72% (severely inflated)
                  
benchmarking slowMapp/n=5000
time                 787.3 ms   (-343.3 ms .. 1.888 s)
                     0.789 R²   (0.489 R² .. 1.000 R²)
mean                 848.5 ms   (702.3 ms .. 994.7 ms)
std dev              184.2 ms   (87.21 ms .. 232.6 ms)
variance introduced by outliers: 48% (moderately inflated)
                  
benchmarking slowMapp/n=6000
time                 888.5 ms   (406.5 ms .. 1.880 s)
                     0.863 R²   (0.793 R² .. 1.000 R²)
mean                 1.388 s    (1.128 s .. 1.590 s)
std dev              265.0 ms   (128.2 ms .. 355.8 ms)
variance introduced by outliers: 47% (moderately inflated)
                  
benchmarking slowMapp/n=7000
time                 1.768 s    (1.455 s .. 2.457 s)
                     0.981 R²   (0.971 R² .. 1.000 R²)
mean                 1.606 s    (1.527 s .. 1.719 s)
std dev              107.1 ms   (8.016 ms .. 135.3 ms)
variance introduced by outliers: 20% (moderately inflated)
                  
benchmarking slowMapp/n=8000
time                 2.933 s    (2.406 s .. 4.157 s)
                     0.979 R²   (0.966 R² .. 1.000 R²)
mean                 2.455 s    (2.318 s .. 2.703 s)
std dev              243.0 ms   (10.90 ms .. 305.6 ms)
variance introduced by outliers: 23% (moderately inflated)
                  
Benchmark criterion: FINISH
Completed 2 action(s).
```

## AutoBench

- [結果](./AutoBenched.png)