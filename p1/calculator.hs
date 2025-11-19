{-
  A basic calculator for arithmetic expressions
  Based on the example in Chapter 8 of "Programming in Haskell"
  by Graham Hutton.

  Pedro Vasconcelos, 2025
-}
module Main where

import Parsing
import Data.Char

type Name = String
type Env = [( Name , Integer )]

--
-- a data type for expressions
-- made up from integer numbers, + and *
--
data Expr = Num Integer
          | Add Expr Expr
          | Mul Expr Expr
          | Sub Expr Expr
          | Div Expr Expr
          | Mod Expr Expr
          | Var Name 
          deriving Show

data Command = Assignment Name Expr
             | Expression Expr

-- a recursive evaluator for expressions
--
eval :: Env -> Expr -> Integer
eval env (Num n) = n
eval env (Add e1 e2) = eval env e1 + eval env e2
eval env (Mul e1 e2) = eval env e1 * eval env e2
eval env (Sub e1 e2) = eval env e1 - eval env e2
eval env (Div e1 e2) = eval env e1 ⁠ div ⁠ eval env e2
eval env (Mod e1 e2) = eval env e1 ⁠ mod ⁠ eval env e2
eval env (Var name) = case lookup name env of
                            Just value -> value
                            Nothing -> error ("undefined var" ++ name)

exec :: Env -> Command -> (String, Env)
exec env (Expression e) = (show (eval env e), env)
exec env (Assignment v e) =
    let val = eval env e
        env' = (v,val) : filter ((/=v) . fst) env
    in (show val, env')

-- | a parser for expressions
-- Grammar rules:
--
-- expr ::= term exprCont
-- exprCont ::= '+' term exprCont | epsilon

-- term ::= factor termCont
-- termCont ::= '*' factor termCont | epsilon

-- factor ::= natural | '(' expr ')'

cmd :: Parser Command
cmd = do v <- variable
         char '='
         e <- expr
         return (Assignment v e)
      <|> do e <- expr
             return (Expression e)

                      
expr :: Parser Expr
expr = do t <- term
          exprCont t


exprCont :: Expr -> Parser Expr
exprCont acc = do char '+'
                  t <- term
                  exprCont (Add acc t)
               <|> do char '-'
                      t <- term
                      exprCont (Sub acc t)
               <|> return acc
              
term :: Parser Expr
term = do f <- factor
          termCont f

termCont :: Expr -> Parser Expr
termCont acc =  do char '*'
                   f <- factor  
                   termCont (Mul acc f)
                 <|> do char '/'
                        f <- factor  
                        termCont (Div acc f)
                 <|> do char '%'
                        f <- factor  
                        termCont (Mod acc f)
                 <|> return acc

factor :: Parser Expr
factor = do n <- natural
            return (Num n)
          <|> do v <- variable
                 return (Var v)
          <|>
          do char '('
             e <- expr
             char ')'
             return e
             

natural :: Parser Integer
natural = do xs <- many1 (satisfy isDigit)
             return (read xs)

variable :: Parser Name
variable = do xs <- many1 (satisfy isAlpha)
              return xs


----------------------------------------------------------------             
  
main :: IO ()
main
  = do txt <- getContents
       calculator [](lines txt)

-- | read-eval-print loop
calculator :: Env -> [String] -> IO ()
calculator env []  = return ()
calculator env (l:ls) = do 
    let (out, env') = execute env l
    putStrLn out
    calculator env' ls  
    

-- | evaluate a single expression
execute :: Env -> String -> (String, Env)
execute env txt
  = case parse cmd txt of
      [ (c, "") ] ->  exec env c
      _ -> ("parse error; try again", env)