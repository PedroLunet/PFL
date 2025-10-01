-- ex 2.1
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}

{-# HLINT ignore "Use guards" #-}

classifyConditional :: Int -> String
classifyConditional x =
  if x < 0 || x > 20
    then "out of bounds"
    else
      ( if x <= 9
          then "failed"
          else
            ( if x >= 10 && x <= 12
                then "passed"
                else
                  ( if x >= 13 && x <= 15
                      then "good"
                      else
                        ( if x >= 16 && x <= 18
                            then "very good"
                            else
                              "excellent"
                        )
                  )
            )
      )

classifyGuards :: Int -> String
classifyGuards x
  | x < 0 || x > 20 = "out of bounds"
  | x <= 9 = "failed"
  | x >= 10 && x <= 12 = "passed"
  | x >= 13 && x <= 15 = "good"
  | x >= 16 && x <= 18 = "very good"
  | otherwise = "excellent"
