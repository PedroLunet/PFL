# Haskell Quiz & Type Exercises

**1. Indique um tipo admissível para `("abc", -5)`:**

- [x] `(String,Int)` ✅ **CERTA**
- [ ] `(Char,Int)`
- [ ] não existe (erro de tipos)

---

**2. Indique um tipo admissível para `[(False,'a'),(True,'b')]`:**

- [x] `[(Bool,Char)]` ✅ **CERTA**
- [ ] `[(Bool,String)]`
- [ ] `([Bool],[Char])`

---

**3. Qual é o tipo mais geral da função definida por `média x y = (x+y)/2`?**

- [ ] `Integral a => a -> a -> a`
- [ ] `Num a => a -> a -> a`
- [x] `Fractional a => a -> a -> a` ✅ **CERTA**

---

**4. Indique um tipo admissível para a função definida por `f n xs = drop n (reverse xs)`:**

- [x] `Int -> [Char] -> [Char]` ✅ **CERTA**
- [ ] `Int -> [Char] -> Char`
- [ ] `Int -> ([Char], [Char])`

---

**5. Indique um tipo admissível para `[0, 7, 2]`:**

- [x] `[Int]` ✅ **CERTA**
- [ ] `(Int, Int, Int)`
- [ ] `Int`

---

**6. Qual é o tipo mais geral da função definida por `g xs = head (tail xs)`?**

- [ ] `a -> [a]`
- [x] `[a] -> a` ✅ **CERTA**
- [ ] `[a] -> [a]`

---

**7. Qual é o tipo mais geral da função definida por `h xs = tail (reverse xs)`?**

- [x] `[a] -> [a]` ✅ **CERTA**
- [ ] `a -> [a]`
- [ ] `[a] -> a`

---

**8. Indique um tipo admissível para `['a','b',3]`:**

- [x] não existe (erro de tipos) ✅ **CERTA**
- [ ] `[Char,Int]`
- [ ] `[Char]`

---

**9. Qual das definições usando `case` é equivalente à seguinte definição usando equações e padrões?**

```haskell
f :: [a] -> [a]
f [] = []
f (x:_) = [x]
```

- **Opção A:**

  ```haskell
  f xs = case xs of
          [] -> []
          (x:_) -> [x]
  ```

  ✅ **CERTA**

- **Opção B:**

  ```haskell
  f (x:xs) = case xs of
          [] -> []
          _ -> [x]
  ```

- **Opção C:**
  ```haskell
  f [xs] = case xs of
             [] -> []
             (x:_) -> [x]
  ```

---

**10. Qual o comprimento da lista `(1,2):(3,4):(5,6):[]`?**

- [x] 3 ✅ **CERTA**
- [ ] 2
- [ ] 6

---

**11. Qual o resultado da expressão `zip [1,2,3] "abracadabra"`?**

- [ ] `[(1,'b'),(2,'r'),(3,'a')]`
- [ ] `[(1,"abra"),(2,"cada"),(3,"bra")]`
- [x] `[(1,'a'),(2,'b'),(3,'r')]` ✅ **CERTA**

---

**12. Qual é o resultado da expressão `[3,5..9]`?**

- [x] `[3,5,7,9]` ✅ **CERTA**
- [ ] `[3,5,6,7,8,9]`
- [ ] `[3,5,7]`

---

**13. Qual das seguintes alternativas seria uma definição correta do operador lógico “ou” `(||) :: Bool -> Bool -> Bool`?**

- **Opção A:**

  ```haskell
  False || x = x
  True  || _ = True
  ```

  ✅ **CERTA**

- **Opção B:**

  ```haskell
  x || x = x
  x || y = True
  ```

- **Opção C:**
  ```haskell
  False || _ = False
  True  || x = x
  ```

---

**14. Qual da seguintes listas é equivalente a `([1,2]:[]:[3,4]:[])`?**

- [ ] `[[1,2,3,4]]`
- [x] `[[1,2],[],[3,4]]` ✅ **CERTA**
- [ ] `[[1,2],[],[3,4],[]]`

---

**15. Qual é o resultado da expressão `[d | d<-[1..6], 6`mod`d==0]`?**

- [x] `[1,2,3,6]` ✅ **CERTA**
- [ ] `[]`
- [ ] `[1,6]`

---

**16. Considere a função definida pela equação:**

```haskell
f :: [Int] -> Int
f (x:y:xs) = x+y
```

**Esta função está definida para listas:**

- [x] com pelo menos 2 elementos ✅ **CERTA**
- [ ] com exatamente 2 elementos
- [ ] com no máximo 2 elementos

**1. Qual das seguintes alternativas escolhe números múltiplos de 3 ou múltiplos de 5 de uma lista de inteiros xs?**

- [x] `[x | x<-xs, x`mod`3==0 || x`mod`5==0]` ✅ **CERTA**
- [ ] `[x | x<-xs, x`mod`3==0, x`mod`5==0]`
- [ ] `[x`mod`3==0 || x`mod`5==0 | x<-xs]`

---

**2. O que calcula a seguinte definição?**

```haskell
f xs = length [ x | x<-xs, x>='A' && x<='Z']
```

- [x] número de letras maiúsculas em xs ✅ **CERTA**
- [ ] a lista de letras maiúscula em xs
- [ ] se xs consiste apenas de letras maiúsculas

---

**3. Qual das seguintes definições de concatenação de listas (++) está correta?**

- **Opção A:**

  ```haskell
  xs ++ [] = xs
  xs ++ (y:ys) = y : (xs++ys)
  ```

- **Opção B:**

  ```haskell
  [] ++ [] = []
  (x:xs) ++ (y:ys) = x:y:(xs++ys)
  ```

- **Opção C:**
  ```haskell
  [] ++ ys = ys
  (x:xs) ++ ys = x : (xs++ys)
  ```
  ✅ **CERTA**

---

**4. O que calcula a seguinte definição?**

```haskell
f xs = and [ x>='A' && x<='Z' | x<-xs ]
```

- [ ] se existe alguma letra maiúscula em xs
- [x] se todos os carateres de xs são letras maiúsculas ✅ **CERTA**
- [ ] se todas as letras maiúsculas ocorrem em xs

---

**5. Qual das seguintes definições usando listas em compreensão é equivalente à seguinte definição recursiva?**

```haskell
f [] = 0
f (x:xs) = 2*x + f xs
```

- [x] `f xs = sum [2*x | x<-xs]` ✅ **CERTA**
- [ ] `f xs = product [2*x | xs<-xs]`
- [ ] `f (x:xs) = 2*x + sum [x | x<-xs]`

---

**6. Qual das seguintes definições recursiva para a função zip é correta?**

- **Opção A:**

  ```haskell
  zip [] _ = []
  zip _ [] = []
  zip (x:xs) (y:ys) = x:y: zip xs ys
  ```

- **Opção B:**

  ```haskell
  zip [] _ = []
  zip _ [] = []
  zip (x:xs) (y:ys) = (x,y) : zip xs ys
  ```

  ✅ **CERTA**

- **Opção C:**
  ```haskell
  zip [] [] = []
  zip (x:xs) (y:ys) = (x,y) : zip xs ys
  ```

---

**7. Qual das seguintes definições de factorial não é correcta?**

- **Opção A:**

  ```haskell
  factorial n | n>0 = n * factorial (n-1)
              | otherwise = 1
  ```

- **Opção B:**

  ```haskell
  factorial n = n*factorial (n-1)
  factorial 0 = 1
  ```

  ✅ **CERTA** _(Nota: A ordem dos padrões está errada, entra em loop infinito)_

- **Opção C:**
  ```haskell
  factorial n = if n>0 then n*factorial (n-1) else 1
  ```

---

**8. Qual das definições recursivas é equivalente à seguinte definição usando uma lista em compreensão?**

```haskell
f xs = [x^2 | x<-xs]
```

- **Opção A:**

  ```haskell
  f [] = []
  f (x:xs) = x^2 : f xs
  ```

  ✅ **CERTA**

- **Opção B:**

  ```haskell
  f [] = []
  f (x:xs) = f (x^2:xs)
  ```

- **Opção C:**
  ```haskell
  f [] = []
  f (x:xs) = f xs ++ [x^2]
  ```

quiz_part3_content = r"""# Haskell Quiz - Part 3 (Higher Order Functions)

**1. Qual das seguintes alternativas é equivalente à expressão em compreensão `[x | x<-[0..10], x`mod`3 /= 0]`?**

- [x] `filter (\x -> x`mod`3/=0) [0..10]` ✅ **CERTA**
- [ ] `map (\x -> x`mod`3/=0) [0..10]`
- [ ] `filter (\x -> x`mod`3==0) [0..10]`

---

**2. Qual é o resultado da expressão `takeWhile (\x -> x/=' ') "Hello, world!"`?**

- [x] `"Hello,"` ✅ **CERTA**
- [ ] `", world!"`
- [ ] `""`

---

**3. Qual das seguintes alternativas define corretamente a função `and` do prelúdio?**

- [ ] `and = foldr (&&) False`
- [ ] `and = foldr (&&)`
- [x] `and = foldr (&&) True` ✅ **CERTA**

---

**4. Qual é o resultado da expressão `dropWhile (==0) [0,0,1,2,0,3,0]`?**

- [x] `[1,2,0,3,0]` ✅ **CERTA**
- [ ] `[0,0,1,2,0,3]`
- [ ] `[1,2,3]`

---

**5. Uma função é de ordem superior se:**

- [x] tiver um argumento que é uma função ✅ **CERTA**
- [ ] se chamar a si própria recursivamente
- [ ] chamar uma outra função que não a própria

---

**6. Relembre que as funções `isUpper, isLower :: Char -> Bool` testam se um carater é uma letra maiúscula e minúscula, respectivamente. Indique qual das alternativas traduz a condição “contém pelo menos uma letra maiúscula e uma letra minúscula” sobre uma lista de carateres `xs`.**

- [ ] `any isUpper xs || any isLower xs`
- [x] `any isUpper xs && any isLower xs` ✅ **CERTA**
- [ ] `any (\x -> isUpper x || isLower x) xs`

---

**7. Qual das seguintes alternativas define corretamente a função `sum` do prelúdio?**

- [x] `sum = foldr (+) 0` ✅ **CERTA**
- [ ] `sum = foldr 0 (+)`
- [ ] `sum = foldr (+1) 0`

---

**8. Qual das seguintes alternativas é equivalente à expressão em compreensão `[2*x+1 | x<-[0..10]]`?**

- [x] `map (\x->2*x+1) [0..10]` ✅ **CERTA**
- [ ] `filter (\x->2*x+1) [0..10]`
- [ ] `map (2*x+1) [0..10]`
      """

**1. Suponha que `primos :: [Integer]` é a lista infinita de todos números primos. Indique qual das alternativas descreve o resultado calculado pela expressão:**

```haskell
sum (take 2 (dropWhile (<=1000) primos))
```

- [x] a soma dos dois primeiros primos que são superiores a 1000 ✅ **CERTA**
- [ ] a soma dos dois primeiros primos que são inferiores a 1000
- [ ] o número de pares de primos consecutivos que são inferiores a 1000

---

**2. Qual das seguintes expressões calcula a lista infinita de todas as potências de 2?**

- [x] `iterate (*2) 1` ✅ **CERTA**
- [ ] `iterate (2^) 1`
- [ ] `iterate (\x -> x*x) 2`

---

**3. O que faz a seguinte ação I/O?**

```haskell
do xs <- getLine
   putStrLn (show (length xs))
```

- [ ] lê uma linha e imprime os seu carateres
- [ ] lê uma linha e retorna o seu comprimento
- [x] lê uma linha e imprime o seu comprimento ✅ **CERTA**

---

**4. Qual das seguintes expressões calcula a seguinte lista infinita de valores:**
$$1, -\frac{1}{2}, \frac{1}{4}, -\frac{1}{8}, \frac{1}{16}, -\frac{1}{32}, \frac{1}{64}, \dots$$

- [x] `[a/b | (a,b)<-zip (cycle [1,-1]) (map (2^) [0..])]` ✅ **CERTA**
- [ ] `[a/b | (a,b)<-zip (cycle [1,-1]) (map (2*) [0..])]`
- [ ] `[a/b | (a,b)<-zip (repeat 1) (map (2^) [0..])]`

---

**5. Qual das seguintes expressões define a lista infinita dos numeros naturais que não são multiplos de 3?**

- [x] `filter (\x -> x`mod`3/=0) [1..]` ✅ **CERTA**
- [ ] `all (\x -> x`mod`3/=0) [1..]`
- [ ] `dropWhile (\x -> x`mod`3==0) [1..]`

---

**6. Em Haskell usamos notação-“do” para:**

- [ ] chamar ações de I/O a partir de uma função pura
- [x] combinar ações de I/O a partir de ações mais simples ✅ **CERTA**
- [ ] definir as ações de I/O usando funções puras

---

**7. Qual das seguintes alternativas é uma definição correta da função `putStr` do prelúdio que imprime uma cadeia de carateres?**

- **Opção A:**

  ```haskell
  putStr []     = return ()
  putStr (x:xs) = do putChar x; putStr xs
  ```

  ✅ **CERTA**

- **Opção B:**

  ```haskell
  putStr []     = putChar '\n'
  putStr (x:xs) = do putChar x; putStr xs
  ```

- **Opção C:**
  ```haskell
  putStr []     = return ()
  putStr (x:xs) = do putStr xs; putChar x
  ```

---

**8. Suponha que `fibs :: [Integer]` é a lista infinita de todos os números de Fibonacci. Indique qual das expressões calcula quantos são os números de Fibonacci entre 100 e 1000 inclusivé.**

- [x] `length (takeWhile (<=1000) (dropWhile (<100) fibs))` ✅ **CERTA**
- [ ] `length (takeWhile (\n -> n>=100 && n<=1000) fibs)`
- [ ] `length (dropWhile (<=1000) (takeWhile (<100) fibs))`

quiz_part5_content = r"""# Haskell Quiz - Part 5 (Sorting, Strings & N-Queens)

**1. Queremos uma função cujo argumento é uma lista de `String` e cujo resultado é a lista das `String` de comprimento inferior a 5. Qual das alternativas seguintes é correta?**

- [x] `filter ((<5).length)` ✅ **CERTA**
- [ ] `filter ((>=5).length)`
- [ ] `filter (<5) . length`

---

**2. Suponha que queremos ordenar uma lista de números por ordem decrescente, ou seja, do maior para o menor. Qual das seguintes alternativas é correta?**

- [x] `sortBy (\x y -> compare y x)` ✅ **CERTA**
- [ ] `sortBy (\x y -> compare x y)`
- [ ] `sortBy (\x y -> reverse (compare x y)`

---

**3. Considere a função `rainhas :: Int -> [Rainhas]` para listar todas as soluções do puzzle da 8 rainhas. Qual das seguinte alternativas conta as soluções em que a rainha da coluna 1 está na linha 1?**
_(Nota: Assumindo a representação padrão onde a lista indica as posições das colunas para cada linha)_

- [ ] `length [ys | ys<-rainhas 8, last ys==1]`
- [ ] `length [ys | ys<-rainhas 8, any (==1) ys]`
- [x] `length [ys | ys<-rainhas 8, head ys==1]` ✅ **CERTA**

---

**4. Suponha que queremos ordenar uma lista de `String` por ordem crescente de comprimento, ou seja, do menor para o maior comprimento. Qual das seguintes alternativas é correta?**

- [x] `sortBy (\xs ys -> compare (length xs) (length ys))` ✅ **CERTA**
- [ ] `sortBy (\xs ys -> compare xs ys)`
- [ ] `sortBy (\xs ys -> compare (length ys) (length xs))`

---

**5. Qual das seguintes alternativas converte uma cadeia de carateres para letras maiúsculas?**

- [x] `map toUpper` ✅ **CERTA**
- [ ] `filter (not.isUpper)`
- [ ] `map isUpper`

---

**6. Qual será o tipo mais geral para a função `countRuns` apresentada na aula?**

```haskell
countRuns [] = []
countRuns (w:ws) = (w, 1+length ws') : countRuns ws''
   where ws' = takeWhile (==w) ws
         ws''= dropWhile (==w) ws
```

- [ ] `Eq a => [a] -> ([a], Int)`
- [x] `Eq a => [a] -> [(a,Int)]` ✅ **CERTA**
- [ ] `Ord a => [a] -> [(a,Int)]`

---

**7. Considere o seguinte tabuleiro. Qual das listas corresponde à representação usada no programa do puzzle da 8 rainhas para o tabuleiro acima?**

- [x] `[2,4,6,8,3,1,7,5]` ✅ **CERTA**
- [ ] `[2,6,4,8,3,7,1,5]`
- [ ] `[2,4,6,8,7,3,1,5]`

---

**8. Qual das seguintes alternativas decompõem uma `String` em palavras com letras minúsculas?**

- [x] `words . map toLower` ✅ **CERTA**
- [ ] `map (words . toLower)`
- [ ] `map toLower . words`

**1. Qual das seguintes declarações de sinónimos de tipos NÃO é válida?**

- [x] `type T = (Int,R,T)` <br> `type R = Char` ✅ **CERTA** _(Sinónimos de tipos `type` não podem ser recursivos)_
- [ ] `type T = (Int,R,R)` <br> `type R = Char`
- [ ] `type T = (Int,R,S)` <br> `type R = Char` <br> `type S = Int`

---

**2. Considere o tipo recursivo para naturais:**

```haskell
data Nat = Zero | Suc Nat
```

**Qual das seguinte opções NÃO é um valor do tipo `Nat`?**

- [x] `(Suc Suc Zero)` ✅ **CERTA** _(Erro de sintaxe: faltam parênteses, ex: `Suc (Suc Zero)`)_
- [ ] `Suc (Suc Zero)`
- [ ] `Zero`

---

**3. Considere a definição de um tipo para proposições apresentada na aula:**

```haskell
data Prop = Const Bool     -- constante
          | Var Char       -- variável
          | Neg Prop       -- negação
          | Conj Prop Prop -- conjunção
          | Disj Prop Prop -- disjunção
          | Impl Prop Prop -- implicação
```

**Qual das seguintes alternativas representa a proposição $p \implies (\neg q \lor r)$?**

- [ ] `(Var 'p') Impl ((Neg (Var 'q')) Disj (Var 'r'))`
- [ ] `Impl (Var 'p') (Neg (Disj (Var 'q') (Var 'r')))`
- [x] `Impl (Var 'p') (Disj (Neg (Var 'q')) (Var 'r'))` ✅ **CERTA**

---

**4. Considere o tipo recursivo para expressões aritméticas:**

```haskell
data Expr = Val Int | Soma Expr Expr | Mult Expr Expr
```

**Qual é a representação da expressão $(3+4) \times 2$ como um valor deste tipo?**

- [x] `Mult (Soma (Val 3) (Val 4)) (Val 2)` ✅ **CERTA**
- [ ] `Soma (Mult (Val 3) (Val 4)) (Val 2)`
- [ ] `Mult (Val 2) (Soma (Val 3) (Val 4)`

---

**5. Considere a declaração:**

```haskell
data Direção = Esquerda | Direita
```

**Qual das seguintes afirmações é correta?**

- [x] `Esquerda` e `Direita` são construtores do tipo `Direção` ✅ **CERTA**
- [ ] `Esquerda` e `Direita` são novos tipos com construtor `Direção`
- [ ] `Esquerda`, `Direita` e `Direção` são novos tipos

---

**6. Considere o tipo recursivo para árvores binárias:**

```haskell
data Arv = Folha Int | No Arv Int Arv
```

**Qual é a representação da árvore (Raiz: 5, Esq: 3, Dir: 7) como um valor do tipo acima?**
_(Nota: Assumindo a estrutura padrão de Árvore de Pesquisa Binária baseada nas opções)_

- [ ] `No (Folha 5) 3 (Folha 7)`
- [x] `No (Folha 3) 5 (Folha 7)` ✅ **CERTA** _(A ordem do tipo é `Arv` `Int` `Arv`)_
- [ ] `No 5 (Folha 3) (Folha 7)` _(Tipo inválido segundo a definição dada)_

---

**7. Considere a seguinte definição da função soma sobre naturais:**

```haskell
data Nat = Zero | Suc Nat

add :: Nat -> Nat -> Nat
add Zero    m = m
add (Suc n) m = Suc (add n m)
```

**Qual é o resultado de avaliar `Suc (add (Suc Zero) (Suc (Suc Zero)))`?**
_(Matematicamente: Suc (1 + 2) = Suc 3 = 4)_

- [x] `Suc (Suc (Suc (Suc Zero))))` ✅ **CERTA** _(Representação de 4)_
- [ ] `Suc (Suc (Suc (Suc (Suc Zero)))))`
- [ ] `Suc (Suc (Suc Zero))`

---

**8. Considere a declaração:**

```haskell
data Figura = Circ Float | Rect Float Float
```

**Qual das seguinte assinaturas de tipos são corretas?**

- [x] `Circ :: Float -> Figura` <br> `Rect :: Float -> Float -> Figura` ✅ **CERTA**
- [ ] `Circ :: Float -> Circ` <br> `Rect :: Float -> Float -> Rect`
- [ ] `Circ :: Figura` <br> `Rect :: Figura`

# Haskell Exam Solutions & Review

This document contains solutions and explanations for three Haskell midterm exams (MT1).

---

# 📚 MT1 25/26 Haskell

### Q2: Reversing Edges (List Comprehensions)

**Goal:** Flip every connection. If `A→B` with distance 10 exists, make it `B→A` with distance 10.
**Constraint:** Must use list comprehensions.

```haskell
inverse :: Edges -> Edges
-- We take every tuple (x, y, d) from 'edges'
-- We output a new tuple (y, x, d)
inverse edges = [(y, x, d) | (x, y, d) <- edges]
```

**Why this works:**

- The generator `(x, y, d) <- edges` pulls every item apart.
- We simply rearrange the variables in the output section before the pipe `|`.

---

### Q3: Composing Edges (New Connections)

**Goal:** If `A→B` (dist 10) and `B→C` (dist 5) exist, create `A→C` (dist 15).
**Constraint:** No self-loops (`A→A`) allowed.

```haskell
newEdges :: Edges -> Edges
newEdges edges = [ (x, z, d1 + d2) | (x, y, d1) <- edges,   -- Find first edge A->B
                                     (y2, z, d2) <- edges,  -- Find second edge B->C
                                     y == y2,               -- Ensure they connect at B
                                     x /= z ]               -- Ensure A is not C
```

**Why this works:**

- We iterate through the edges list twice (nested loop equivalent).
- We look for a match where the destination of the first edge (`y`) is the start of the second edge (`y2`).

---

### Q4: Path Distance (Recursion & Maybe)

**Goal:** Calculate total distance of a specific path (e.g., `["Porto", "Aveiro", "Coimbra"]`). Return `Nothing` if a link is missing.

```haskell
pathDistance :: Edges -> [Node] -> Maybe Dist
pathDistance edges nodes = aux nodes 0
  where
    -- Base Case: If the path has 0 or 1 city left, we are done.
    aux [] acc = Just acc
    aux [_] acc = Just acc

    -- Recursive Step: Look at current city 'u' and next city 'v'
    aux (u:v:rest) acc =
        -- Find the distance 'd' between u and v in our edges list
        case [d | (x, y, d) <- edges, x == u, y == v] of
            (d:_) -> aux (v:rest) (acc + d) -- Found it! Add d and continue.
            []    -> Nothing                -- Edge doesn't exist. Fail.
```

**Why this works:**

- It uses an auxiliary function `aux` to carry an accumulator (`acc`) for the total distance.
- It uses a list comprehension to "lookup" the distance.

---

### Q5: Shortest Unique Edges (Recursion)

**Goal:** Remove duplicate edges (same start/end), keeping only the one with the smallest distance.

```haskell
shortest :: Edges -> Edges
shortest [] = []
shortest ((x, y, d):rest) = (x, y, minD) : shortest filteredRest
  where
    -- 1. Find all versions of this specific edge (x->y) in the entire list
    allVersions = (x, y, d) : [ (a,b,dist) | (a,b,dist) <- rest, a==x, b==y ]
    -- 2. Find the minimum distance among them
    minD = minimum [ dist | (_,_,dist) <- allVersions ]
    -- 3. Remove all occurrences of x->y from the 'rest'
    filteredRest = [ (a,b,c) | (a,b,c) <- rest, not (a==x && b==y) ]
```

---

### Q6, Q7, Q8: Logic & Data Types

**Context:**

```haskell
data Prop = Const Bool
          | Variable Char
          | Not Prop
          | And Prop Prop
          | Imply Prop Prop
```

#### Q6: Rename Variables

**Goal:** Replace variables based on a lookup list.

```haskell
rename :: [(Char, Char)] -> Prop -> Prop
rename _ (Const b) = Const b
rename mapping (Variable x) =
    case lookup x mapping of       -- Check if 'x' is in our list
        Just newName -> Variable newName
        Nothing      -> Variable x
rename mapping (Not p) = Not (rename mapping p)
rename mapping (And p q) = And (rename mapping p) (rename mapping q)
rename mapping (Imply p q) = Imply (rename mapping p) (rename mapping q)
```

#### Q7: nubBy (Custom Deduplication)

**Goal:** Remove duplicates from a list using a custom equality function.

```haskell
nubBy :: (a -> a -> Bool) -> [a] -> [a]
nubBy _ [] = []
nubBy eq (x:xs) = x : nubBy eq [ y | y <- xs, not (eq x y) ]
```

#### Q8: Normalize

**Goal:** Rename variables to 'a', 'b', 'c'... based on their order of appearance.

```haskell
normalize :: Prop -> Prop
normalize p = rename mapping p
  where
    allVars = vars p
    uniqueVars = nubBy (==) allVars
    mapping = zip uniqueVars ['a'..'z']

-- Helper needed from lectures:
vars :: Prop -> [Char]
vars (Variable c) = [c]
vars (Not p) = vars p
vars (And p q) = vars p ++ vars q
vars (Imply p q) = vars p ++ vars q
vars _ = []
```

---

# ⚽ MT1 24/25 Haskell

**Types Used:**

```haskell
type Match = ((String,String), (Int,Int))
type MatchDay = [Match]
type League = [MatchDay]
```

### Q1: Winner

**Goal:** Determine the winner of a single match.

```haskell
winner :: Match -> String
winner ((home, away), (hScore, aScore))
    | hScore > aScore = home
    | hScore < aScore = away
    | otherwise       = "draw"
```

---

### Q2: Match Day Score

**Goal:** Calculate the points a team earned on a specific match day.

```haskell
matchDayScore :: String -> MatchDay -> Int
matchDayScore team [] = 0
matchDayScore team (match:subDay)
    | not (team `participatesIn` match) = matchDayScore team subDay
    | winTeam == team   = 3
    | winTeam == "draw" = 1
    | otherwise         = 0
    where
        winTeam = winner match

        participatesIn :: String -> Match -> Bool
        participatesIn t ((h, a), _) = t == h || t == a
```

---

### Q3: Ranking

**Goal:** Return a leaderboard sorted by points (descending) then name.

```haskell
ranking :: League -> [(String, Int)]
ranking league = sortByCond (leagueScores league) compTeams

-- Helper: Calculate total score for every team
leagueScores :: League -> [(String, Int)]
leagueScores league = [(team, leagueScore team league) | team <- getTeams league]

-- Helper: Custom comparison (Score DESC, then Name ASC)
compTeams :: (String, Int) -> (String, Int) -> Bool
compTeams (team1, score1) (team2, score2)
    | score1 /= score2 = score1 > score2  -- Check score first
    | otherwise        = team1 < team2    -- Break ties alphabetically

-- Helper: Get unique list of teams
getTeams :: League -> [String]
getTeams league = nub [ home | day <- league, ((home, _), _) <- day ]
               ++ nub [ away | day <- league, ((_, away), _) <- day ]
```

---

### Q4: Match Days with Draws

**Goal:** Count match days that had at least one draw (using higher-order functions).

```haskell
numMatchDaysWithDraws :: League -> Int
numMatchDaysWithDraws = length . filter (any ((== "draw") . winner))
```

---

### Q5: Big Wins

**Goal:** Find match days where a team won by 3 or more goals.

```haskell
bigWins :: League -> [(Int, [String])]
bigWins league =
    [ (i, [winner match | match@(_, (s1, s2)) <- matchDay, abs (s1 - s2) >= 3])
    | (i, matchDay) <- zip [1..] league ]
```

---

### Q6: Winning Streaks

**Goal:** Find sequences of consecutive wins.

```haskell
winningStreaks :: League -> [(String, Int, Int)]
winningStreaks league = concat [filterWins $ groupWins $ getWins team league | team <- getTeams league]

-- 1. Get all winning indices for a team
getWins :: String -> League -> [(String, Int, Int)]
getWins team league = [(team, i, i) | (i, matchDay) <- zip [1..] league, match <- matchDay, winner match == team]

-- 2. Group consecutive indices together
groupWins :: [(String, Int, Int)] -> [(String, Int, Int)]
groupWins [] = []
groupWins [win] = [win]
groupWins (win1@(team, i1, j1) : win2@(_, i2, j2) : wins)
    | i2 <= j1 + 1 = groupWins $ (team, i1, j2) : wins -- Merge if consecutive
    | otherwise    = win1 : groupWins (win2 : wins)    -- Else keep separate

-- 3. Filter out streaks that are less than 2 games long
filterWins :: [(String, Int, Int)] -> [(String, Int, Int)]
filterWins = filter (\(_, i, j) -> j - i >= 1)
```

---

### Q7: Adjacent Cities

**Goal:** Find all neighbors of a city in an undirected graph.

```haskell
adjacent :: RoadMap -> City -> [(City, Distance)]
adjacent roadMap city =
    [(dest, dist) | (orig, dest, dist) <- roadMap, orig == city] ++
    [(orig, dist) | (orig, dest, dist) <- roadMap, dest == city]
```

---

### Q8: Are Connected?

**Goal:** Determine if a path exists between two cities using DFS.

```haskell
areConnected :: RoadMap -> City -> City -> Bool
areConnected roadMap start end = end `elem` dfs roadMap start [] [start]

-- Helper: Depth First Search returning list of visited nodes
dfs :: RoadMap -> City -> [City] -> [City] -> [City]
dfs _ _ visited [] = visited
dfs roadMap _ visited (top:stackTail)
    | top `elem` visited = dfs roadMap top visited stackTail
    | otherwise          = dfs roadMap top (top:visited) (adjs ++ stackTail)
    where
        adjs = [c | (c, _) <- adjacent roadMap top]
```

---

# 🐾 MT1 22/23 Haskell

### Q1 & Q2: Species Basics

**Goal:** Check if endangered / Update population.

```haskell
isEndangered :: Species -> Bool
isEndangered (name, count) = count <= 100

updateSpecies :: Species -> Int -> Species
updateSpecies (name, _) newCount = (name, newCount)
```

### Q3: Filter Species (Recursion)

**Goal:** Filter list based on a predicate (No map/filter allowed).

```haskell
filterSpecies :: Zoo -> (Species -> Bool) -> Zoo
filterSpecies [] _ = []
filterSpecies (s:xs) p
    | p s       = s : filterSpecies xs p
    | otherwise = filterSpecies xs p
```

### Q4: Count Animals (Higher-Order)

**Goal:** Sum total population.

```haskell
countAnimals :: Zoo -> Int
countAnimals animals = sum (map snd animals)
```

### Q5: Substring (List Comp)

**Goal:** Get substring from start index to end index.

```haskell
substring :: (Integral a) => String -> a -> a -> String
substring xs start end = [ x | (i, x) <- zip [0..] xs, i >= fromIntegral start, i <= fromIntegral end ]
```

### Q6 & Q7: Substring Search

**Goal:** Check if string A contains B / Sort based on containment.

```haskell
hasSubstr :: String -> String -> Bool
hasSubstr [] _ = False
hasSubstr xs sub
    | take (length sub) xs == sub = True
    | otherwise = hasSubstr (tail xs) sub

sortSpeciesWithSubstr :: Zoo -> String -> (Zoo, Zoo)
sortSpeciesWithSubstr animals str =
    ( [s | s@(name, _) <- animals, hasSubstr name str],
      [s | s@(name, _) <- animals, not (hasSubstr name str)] )
```

### Q8: Rabbits (Infinite Lists)

**Goal:** Generate the infinite sequence `[2, 3, 5, 8...]`.

```haskell
rabbits :: (Integral a) => [a]
rabbits = 2 : 3 : zipWith (+) rabbits (tail rabbits)
```

**Why this works:**

- `rabbits`: `[2, 3, 5, ...]`
- `tail`: `[3, 5, 8, ...]`
- `zipWith (+)` combines them to produce the next element.

### Q9: Rabbit Years

**Goal:** How many years until population ≥ X?

```haskell
rabbitYears :: (Integral a) => a -> Int
rabbitYears val = length (takeWhile (< val) rabbits)
```

### Q10: Dendrogram Width

**Goal:** Calculate the horizontal distance between the leftmost and rightmost leaf.

```haskell
dendroWidth :: Dendrogram -> Int
dendroWidth (Leaf _) = 0
dendroWidth (Node left x right) = (x + distLeft left) + (x + distRight right)
  where
    -- Helper to go all the way LEFT
    distLeft (Leaf _) = 0
    distLeft (Node l dist _) = dist + distLeft l

    -- Helper to go all the way RIGHT
    distRight (Leaf _) = 0
    distRight (Node _ dist r) = dist + distRight r
```

### Q11: Dendrogram In Bounds

**Goal:** Return list of leaves within limit distance.

```haskell
dendroInBounds :: Dendrogram -> Int -> [String]
dendroInBounds (Leaf s) limit
    | limit >= 0 = [s]  -- If we have distance left, we can reach this leaf
    | otherwise  = []
dendroInBounds (Node left x right) limit =
    dendroInBounds left (limit - x) ++ dendroInBounds right (limit - x)
```

# 🛠️ Haskell Base Functions Cheat Sheet

_Implementations of standard Prelude functions from scratch._

## 1. Basic List Access

_Safe access patterns and analyzing structure._

### `length`

Calculates the number of elements.

```haskell
myLength :: [a] -> Int
myLength [] = 0
myLength (_:xs) = 1 + myLength xs
```

### `null`

Checks if a list is empty.

```haskell
myNull :: [a] -> Bool
myNull [] = True
myNull _  = False
```

### `last`

Returns the last element (unsafe on empty lists).

```haskell
myLast :: [a] -> a
myLast [x] = x
myLast (_:xs) = myLast xs
```

### `init`

Returns everything _except_ the last element.

```haskell
myInit :: [a] -> [a]
myInit [x] = []
myInit (x:xs) = x : myInit xs
```

---

## 2. Higher-Order Functions (The Big Three)

_The most important functions in Haskell._

### `map`

Applies a function to every element.

```haskell
myMap :: (a -> b) -> [a] -> [b]
myMap _ [] = []
myMap f (x:xs) = f x : myMap f xs
```

### `filter`

Keeps elements that satisfy the predicate.

```haskell
myFilter :: (a -> Bool) -> [a] -> [a]
myFilter _ [] = []
myFilter p (x:xs)
    | p x       = x : myFilter p xs
    | otherwise = myFilter p xs
```

### `foldr` (Right Fold)

Processes list from right to left (preserves structure).

```haskell
myFoldr :: (a -> b -> b) -> b -> [a] -> b
myFoldr _ z [] = z
myFoldr f z (x:xs) = f x (myFoldr f z xs)
```

_Visual:_ `f 1 (f 2 (f 3 z))`

### `foldl` (Left Fold)

Processes list from left to right (accumulator style).

```haskell
myFoldl :: (b -> a -> b) -> b -> [a] -> b
myFoldl _ acc [] = acc
myFoldl f acc (x:xs) = myFoldl f (f acc x) xs
```

_Visual:_ `f (f (f acc 1) 2) 3`

---

## 3. List Manipulation

### `(++)` (Append)

Joins two lists together.

```haskell
myAppend :: [a] -> [a] -> [a]
myAppend [] ys = ys
myAppend (x:xs) ys = x : myAppend xs ys
```

### `concat`

Flattens a list of lists.

```haskell
myConcat :: [[a]] -> [a]
myConcat [] = []
myConcat (x:xs) = x ++ myConcat xs
-- Or: foldr (++) []
```

### `reverse`

Reverses a list.

```haskell
myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x:xs) = myReverse xs ++ [x]
-- Efficient Version (using accumulator):
-- myReverse xs = aux xs []
--   where aux [] acc = acc
--         aux (y:ys) acc = aux ys (y:acc)
```

---

## 4. Sublists & Scanning

### `take`

Takes the first n elements.

```haskell
myTake :: Int -> [a] -> [a]
myTake n _      | n <= 0 = []
myTake _ []              = []
myTake n (x:xs)          = x : myTake (n-1) xs
```

### `drop`

Drops the first n elements.

```haskell
myDrop :: Int -> [a] -> [a]
myDrop n xs     | n <= 0 = xs
myDrop _ []              = []
myDrop n (_:xs)          = myDrop (n-1) xs
```

### `takeWhile`

Takes elements as long as predicate is true.

```haskell
myTakeWhile :: (a -> Bool) -> [a] -> [a]
myTakeWhile _ [] = []
myTakeWhile p (x:xs)
    | p x       = x : myTakeWhile p xs
    | otherwise = []
```

### `dropWhile`

Drops elements as long as predicate is true.

```haskell
myDropWhile :: (a -> Bool) -> [a] -> [a]
myDropWhile _ [] = []
myDropWhile p all@(x:xs)
    | p x       = myDropWhile p xs
    | otherwise = all
```

---

## 5. Zipping

_Combining two lists._

### `zip`

Combines two lists into a list of pairs.

```haskell
myZip :: [a] -> [b] -> [(a,b)]
myZip (x:xs) (y:ys) = (x,y) : myZip xs ys
myZip _ _           = []
```

### `zipWith`

Combines two lists using a specific function.

```haskell
myZipWith :: (a -> b -> c) -> [a] -> [b] -> [c]
myZipWith f (x:xs) (y:ys) = f x y : myZipWith f xs ys
myZipWith _ _ _           = []
```

---

## 6. Logic & Search

### `and` / `or`

Checks if all (and) or any (or) are True.

```haskell
myAnd :: [Bool] -> Bool
myAnd [] = True
myAnd (x:xs) = x && myAnd xs

myOr :: [Bool] -> Bool
myOr [] = False
myOr (x:xs) = x || myOr xs
```

### `elem`

Checks if a value exists in the list (requires Eq).

```haskell
myElem :: Eq a => a -> [a] -> Bool
myElem _ [] = False
myElem e (x:xs)
    | e == x    = True
    | otherwise = myElem e xs
```

---

## 7. Sorting (Insertion Sort)

_The easiest sort to memorize for exams._

### `insert`

Inserts an element into a sorted list.

```haskell
insert :: Ord a => a -> [a] -> [a]
insert x [] = [x]
insert x (y:ys)
    | x <= y    = x : y : ys
    | otherwise = y : insert x ys
```

### `isort`

Sorts a list using insert.

```haskell
isort :: Ord a => [a] -> [a]
isort [] = []
isort (x:xs) = insert x (isort xs)
```

# 🛠️ Haskell Base Functions Cheat Sheet - Part 2

_Advanced list processing, function utilities, and Trees._

## 1. Splitting & Grouping Lists

_Functions that break lists into tuples._

### `splitAt`

Splits a list into two at index `n`.

```haskell
mySplitAt :: Int -> [a] -> ([a], [a])
mySplitAt n xs = (take n xs, drop n xs)
-- Recursive version:
-- mySplitAt _ [] = ([], [])
-- mySplitAt n xs | n <= 0 = ([], xs)
-- mySplitAt n (x:xs) = let (first, rest) = mySplitAt (n-1) xs
--                      in (x:first, rest)
```

### `span`

Splits a list into two: the longest prefix that satisfies `p`, and the rest.

```haskell
mySpan :: (a -> Bool) -> [a] -> ([a], [a])
mySpan _ [] = ([], [])
mySpan p all@(x:xs)
    | p x       = let (first, rest) = mySpan p xs
                  in (x:first, rest)
    | otherwise = ([], all)
```

### `break`

Splits a list at the first element where `p` is **True** (opposite of `span`).

```haskell
myBreak :: (a -> Bool) -> [a] -> ([a], [a])
myBreak p = mySpan (not . p)
```

### `unzip`

Takes a list of pairs and splits them into two lists.

```haskell
myUnzip :: [(a, b)] -> ([a], [b])
myUnzip [] = ([], [])
myUnzip ((x, y):rest) = (x:xs, y:ys)
  where (xs, ys) = myUnzip rest
```

---

## 2. Generating Lists

### `replicate`

Creates a list with `n` copies of `x`.

```haskell
myReplicate :: Int -> a -> [a]
myReplicate n x
    | n <= 0    = []
    | otherwise = x : myReplicate (n-1) x
```

### `cycle`

Repeats a non-empty list infinitely.

```haskell
myCycle :: [a] -> [a]
myCycle [] = error "Empty list"
myCycle xs = xs ++ myCycle xs
```

### `repeat`

Repeats a single element infinitely.

```haskell
myRepeat :: a -> [a]
myRepeat x = x : myRepeat x
```

---

## 3. Function Utilities

_Helpers for manipulating function arguments._

### `flip`

Takes a function and flips the order of its first two arguments.

```haskell
myFlip :: (a -> b -> c) -> b -> a -> c
myFlip f x y = f y x
```

### `const`

Returns the first argument, ignoring the second.

```haskell
myConst :: a -> b -> a
myConst x _ = x
```

### `(.)` (Composition)

Chains two functions together: `(f . g) x` means `f (g x)`.

```haskell
myCompose :: (b -> c) -> (a -> b) -> a -> c
myCompose f g x = f (g x)
```

### `($)` (Application)

Apply a function. Used to avoid parentheses. `f $ g x` is `f (g x)`.

```haskell
myApply :: (a -> b) -> a -> b
myApply f x = f x
```

---

## 4. Maybe & Either Utilities

_Handling optional values safely._

### `isJust` / `isNothing`

Checks if a Maybe value is present.

```haskell
myIsJust :: Maybe a -> Bool
myIsJust (Just _) = True
myIsJust Nothing  = False
```

### `fromMaybe`

Extracts the value or returns a default.

```haskell
myFromMaybe :: a -> Maybe a -> a
myFromMaybe defaultVal Nothing  = defaultVal
myFromMaybe _ (Just x)          = x
```

### `maybe`

Applies a function to the value inside Just, or returns default.

```haskell
myMaybe :: b -> (a -> b) -> Maybe a -> b
myMaybe defaultVal _ Nothing  = defaultVal
myMaybe _ f (Just x)          = f x
```

---

## 5. Binary Tree Basics

_Standard traversals for a simple Binary Tree._

```haskell
data Tree a = Empty | Node a (Tree a) (Tree a)
```

### `mapTree`

Applies a function to every value in the tree.

```haskell
mapTree :: (a -> b) -> Tree a -> Tree b
mapTree _ Empty = Empty
mapTree f (Node x left right) = Node (f x) (mapTree f left) (mapTree f right)
```

### `sumTree` (Example of Folding)

Sums all numbers in a tree.

```haskell
sumTree :: Num a => Tree a -> a
sumTree Empty = 0
sumTree (Node x left right) = x + sumTree left + sumTree right
```

### `height`

Calculates the height of the tree.

```haskell
height :: Tree a -> Int
height Empty = 0
height (Node _ left right) = 1 + max (height left) (height right)
```

---

## 6. Tree Traversals

_The three ways to turn a Tree into a List._

### `preorder` (Root -> Left -> Right)

```haskell
preorder :: Tree a -> [a]
preorder Empty = []
preorder (Node x left right) = [x] ++ preorder left ++ preorder right
```

### `inorder` (Left -> Root -> Right)

_Produces sorted list for BSTs._

```haskell
inorder :: Tree a -> [a]
inorder Empty = []
inorder (Node x left right) = inorder left ++ [x] ++ inorder right
```

### `postorder` (Left -> Right -> Root)

```haskell
postorder :: Tree a -> [a]
postorder Empty = []
postorder (Node x left right) = postorder left ++ postorder right ++ [x]
```

# 🛠️ Haskell Base Functions Cheat Sheet - Part 3

_Complex helpers for Grouping, Graphs, and Lookups (The "Exam Killers")._

## 1. Grouping & Partitioning

_Essential for "consecutive streaks" or "categorizing" problems (seen in 24/25)._

### `group`

Groups consecutive elements that are equal.

```haskell
myGroup :: Eq a => [a] -> [[a]]
myGroup [] = []
myGroup (x:xs) = (x:ys) : myGroup zs
  where (ys, zs) = span (==x) xs
```

_Example:_ `myGroup [1,1,2,3,3,3] -> [[1,1], [2], [3,3,3]]`

### `groupBy` (The General Version)

Groups consecutive elements based on a custom predicate.

```haskell
myGroupBy :: (a -> a -> Bool) -> [a] -> [[a]]
myGroupBy _ [] = []
myGroupBy p (x:xs) = (x:ys) : myGroupBy p zs
  where (ys, zs) = span (p x) xs
```

_Use case:_ Grouping days where the score difference is similar.

### `partition`

Splits a list into two lists: (Satisfies Predicate, Does Not Satisfy).
Unlike `span`, this goes through the _whole_ list, not just the start.

```haskell
myPartition :: (a -> Bool) -> [a] -> ([a], [a])
myPartition _ [] = ([], [])
myPartition p (x:xs)
    | p x       = (x:yes, no)
    | otherwise = (yes, x:no)
    where (yes, no) = myPartition p xs
```

---

## 2. Advanced Searching & Deduplication

_Essential for "unique lists" or "custom equality" (seen in 25/26)._

### `nub` (Remove Duplicates)

Keeps only the first occurrence of each element.

```haskell
myNub :: Eq a => [a] -> [a]
myNub [] = []
myNub (x:xs) = x : myNub (filter (/= x) xs)
```

### `nubBy` (Custom Deduplication)

Removes duplicates based on a custom function (e.g., same first letter).

```haskell
myNubBy :: (a -> a -> Bool) -> [a] -> [a]
myNubBy _ [] = []
myNubBy p (x:xs) = x : myNubBy p (filter (\y -> not (p x y)) xs)
```

### `lookup`

Finds a value in a list of key-value pairs (Association List).

```haskell
myLookup :: Eq a => a -> [(a, b)] -> Maybe b
myLookup _ [] = Nothing
myLookup key ((k,v):rest)
    | key == k  = Just v
    | otherwise = myLookup key rest
```

### `find`

Returns the first element that satisfies a predicate (returns Maybe).

```haskell
myFind :: (a -> Bool) -> [a] -> Maybe a
myFind _ [] = Nothing
myFind p (x:xs)
    | p x       = Just x
    | otherwise = myFind p xs
```

---

## 3. Graph & Path Helpers

_Essential for "connected cities" or "path distance" (seen in 24/25 & 25/26)._

### `elem` (Search)

Checking if a node is visited.

```haskell
myElem :: Eq a => a -> [a] -> Bool
myElem _ [] = False
myElem y (x:xs) = (x == y) || myElem y xs
```

### `union` (Set Union)

Combines two lists without duplicates (good for merging neighbor lists).

```haskell
myUnion :: Eq a => [a] -> [a] -> [a]
myUnion xs ys = xs ++ [y | y <- ys, not (myElem y xs)]
```

### `intersect` (Set Intersection)

Finds common elements between two lists.

```haskell
myIntersect :: Eq a => [a] -> [a] -> [a]
myIntersect xs ys = [x | x <- xs, myElem x ys]
```

---

## 4. Sorting

_The "Merge Sort" - harder to write than Insertion Sort, but good to understand for recursive logic._

### `merge` (Helper)

Merges two sorted lists into one sorted list.

```haskell
merge :: Ord a => [a] -> [a] -> [a]
merge [] ys = ys
merge xs [] = xs
merge (x:xs) (y:ys)
    | x <= y    = x : merge xs (y:ys)
    | otherwise = y : merge (x:xs) ys
```

### `msort` (Merge Sort)

Divides list in half recursively and merges.

```haskell
msort :: Ord a => [a] -> [a]
msort [] = []
msort [x] = [x]
msort xs = merge (msort firstHalf) (msort secondHalf)
  where
    (firstHalf, secondHalf) = splitAt (length xs `div` 2) xs
```
