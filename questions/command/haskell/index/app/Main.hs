-- module Main (main) where

-- import Lib

-- main :: IO ()
-- main = someFunc

-- Main.hs
module Main where

import Lib (command)
import Command (perfect, great, good, bad, miss)

main :: IO ()
main = do
  -- すべての要素が "perfect" の場合
  let result1 = command [perfect, perfect, perfect]
  putStrLn $ "Test 1 (All Perfect): " ++ result1  -- 結果: "All Perfect"

  -- "perfect" または "great" のみが含まれている場合
  let result2 = command [perfect, great, perfect, great]
  putStrLn $ "Test 2 (Full Combo): " ++ result2  -- 結果: "Full Combo"

  -- 他の評価が含まれている場合
  let result3 = command [perfect, great, good, bad, miss]
  putStrLn $ "Test 3 (Failed): " ++ result3  -- 結果: "Failed"
