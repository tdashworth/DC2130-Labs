Questions: [lab1.pdf](https://drive.google.com/file/d/1YLeTcUVAp7hbBY2tsETfKZkz-YIVEKF_/view)

1. 
```lisp
(print (+ 1 2))
```

2. 
```lisp
(format t (if (string= input "") "nothing typed" "you typed: ~a") input)
```

3. 
```lisp
(let ((prg '(+ 1 n))) (print prg) (setf n 1) (print (eval prg)) )
```

4. 
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

5. 
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

6. 
putStrLine has a return type of IO() which is a program/function, not a string which is the expected value of the ask program/function.

7. 
...
