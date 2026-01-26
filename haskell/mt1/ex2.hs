type VarName = Char
data Prop = Const Bool
          | Variable VarName
          | Not Prop
          | And Prop Prop
          | Imply Prop Prop
          deriving Show

rename :: [(VarName,VarName)] -> Prop -> Prop
rename