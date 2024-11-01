-- app/Main.hs
module Main where

import Lib (calc, rate)

main :: IO ()
main = do
  putStrLn "Enter your height in cm:"
  height <- readLn :: IO Float
  putStrLn "Enter your weight in kg:"
  weight <- readLn :: IO Float

  let bmi = calc height weight
      bmiRate = rate bmi

  putStrLn $ "Your BMI is: " ++ show bmi
  putStrLn $ "Your BMI rate is: " ++ bmiRate
