module Lib where

calc :: Float -> Float -> Int
calc height weight =
  let unit = height / 100
      denominator = unit * unit
  in round (weight / denominator)

rate :: Int -> String
rate bmi
  | bmi < 20 = "A"
  | bmi > 20 && bmi < 25 = "B"
  | bmi >= 25 = "C"
