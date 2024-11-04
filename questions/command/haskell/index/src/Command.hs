module Command where

type T = String

perfect :: T
perfect = "perfect"

great :: T
great = "great"

good :: T
good = "good"

bad :: T
bad = "bad"

miss :: T
miss = "miss"

isEqualPerfect :: T -> Bool
isEqualPerfect s = s == perfect

isEqualGreat :: T -> Bool
isEqualGreat s = s == great
