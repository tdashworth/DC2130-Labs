Questions: [lab1.pdf](https://drive.google.com/file/d/1YLeTcUVAp7hbBY2tsETfKZkz-YIVEKF_/view)

## 1. lisp - fix bug
### Attempt:
```lisp
(print (+ 1 2))
```
### Answer:
```lisp
(print (+ 1 2))
```

## 2. lisp - if
### Attempt:
```lisp
(format t (if (string= input "") "nothing typed" "you typed: ~a") input)
```
### Answer:
```lisp
(if (string= input "")
  (format t "nothing typed...")
  (format t "you typed:  ̃a" input))
```

## 3. lisp - eval
### Attempt:
```lisp
(let ((prg '(+ 1 n))) (print prg) (setf n 1) (print (eval prg)) )
```
### Answer;
```lisp
(let ((prg '(+ 1 n))) (print prg) (setf n 1) (print (eval prg)))
```

## 4. haskell - ask, repeat prompt
### Attempt:
```haskell
ask :: String -> IO ()
ask prompt =
  do
  putStrLn prompt
  line <- getLine
  if line == ""
    then ask "please try again"
    else putStrLn ("you said: " ++ reverse line)
```
### Answer:
```haskell
ask prompt =
  do
  putStrLn prompt
  line <- getLine
  if line == ""
    then ask "try again" −− the only change
    else putStrLn ("you said: " ++ reverse line)
```

## 5. haskell - ask, append prompt
### Attempt:
```haskell
ask :: String -> IO ()
ask prompt =
  do
  putStrLn prompt
  line <- getLine
  if line == ""
    then ask (prompt ++ "!")
    else putStrLn ("you said: " ++ reverse line)
```
### Answer:
```haskell
ask prompt =
  do
  putStrLn prompt
  line <- getLine
  if line == ""
    then ask (prompt ++ "!") −− the only change
    else putStrLn ("you said: " ++ reverse line)
```

## 6. haskell - explain error
### Attepmt:
putStrLine has a return type of IO() which is a program/function, not a string which is the expected value of the ask program/function.
### Answer:
The function `ask` takes one parameter of type `String`. This code change violates this because the parameter passed to the function is not a string but an imperative program (ie type `IO ()`)

## 7. haskell - compare with Lisp
### Attempt:
...
### Answer:
The Lisp analogue of putStrLn would not only print the given string but also return this string as a result. Thus the code will work as before, except prompt will be printed twice instead of once. In particular, unlike Haskell, Lisp allows one to freely mix functions that have side effects with functions that return values. Lisp print returns a value and performs an imperative action as well.
