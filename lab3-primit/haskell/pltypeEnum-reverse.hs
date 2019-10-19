module Main where

import System.IO (hSetBuffering, stdout, BufferMode(..))
import Data.Char (toUpper)

main =
    do
    initialiseIO
    putStrLn $ "known PL types = " ++ show allPLTypes
    plType <- getElement "programming language type"
    putStrLn $ show (plType2pl plType) ++ " is of type " ++ show plType
    
initialiseIO =
    do
    hSetBuffering stdout NoBuffering 
        -- ensure any console output is shown asap

data PL = JAVA | C | ADA | PYTHON | LISP | HASKELL | PROLOG
    deriving (Show, -- default formatting
              Read, -- default parsing
              Eq,   -- default equality testing
              Bounded, -- default minBound and maxBound
              Enum) -- default sequencing (needed for .. ranges)
data PLType = OO | PROCEDURAL | FUNCTIONAL | LOGICAL
    deriving (Show, -- default formatting
              Read, -- default parsing
              Eq,   -- default equality testing
              Bounded, -- default minBound and maxBound
              Enum) -- default sequencing (needed for .. ranges)

allPLTypes :: [PLType] -- ie it is a list of PL elements
allPLTypes = [minBound .. maxBound]

plType2pl OO = JAVA
plType2pl PROCEDURAL = C
plType2pl FUNCTIONAL = LISP
plType2pl LOGICAL = PROLOG 

{-
  `getElement'
  queries the user for one element until the user types something 
  that can be interpreted as the correct type of element (eg integer)
-}
getElement elementTypeName =
    do
    hSetBuffering stdout NoBuffering -- print to console in real time, not in batches
    putStr ("Input one " ++ elementTypeName ++ ": ") -- print the prompt
    line <- getLine -- get whatever user types as a string
    case parseElement line of
         Just element -> 
            do
            return element
         Nothing -> 
            do
            putStrLn ("Invalid " ++ elementTypeName ++ ", try again")
            getElement elementTypeName -- try again - using recursion

parseElement line =
    case reads line of
        [] -> -- no valid interpretation of the line as an element ([] = the empty list)
            Nothing
        -- [pattern 2:]
        ((e,_) : _) -> -- found at least one interpretation, call it "e"
            Just e -- type of e is derived from context
                   -- where getElement is used
