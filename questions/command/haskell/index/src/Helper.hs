module Helper where

import Command (isEqualPerfect, isEqualGreat)

isPerfect :: String -> Bool
isPerfect = isEqualPerfect

isGreat :: String -> Bool
isGreat = isEqualGreat
