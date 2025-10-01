-- ex 2.1

classifyBMI :: Float -> Float -> String
classifyBMI w h
  | w / (h ^ 2) < 18.5 = "underweight"
  | w / (h ^ 2) >= 18.5 && w / (h ^ 2) < 25 = "normal weight"
  | w / (h ^ 2) >= 25 && w / (h ^ 2) < 30 = "overweight"
  | otherwise = "obese"
