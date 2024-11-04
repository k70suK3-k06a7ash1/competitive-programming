module Lib where

import Command (isEqualPerfect, isEqualGreat)
import Judge (perfect, fullCombo, failed)

command :: [String] -> String

command s
  | all isEqualPerfect s = perfect
  | all (\e -> isEqualPerfect e || isEqualGreat e) s = fullCombo
  | otherwise = failed