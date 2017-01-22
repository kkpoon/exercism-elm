module Bob exposing (hey)

import String
import Regex


isQuestion : String -> Bool
isQuestion =
    String.trim >> String.endsWith "?"


isYell : String -> Bool
isYell input =
    input
        |> String.trim
        |> String.toUpper
        |> (==) input
        |> (&&) (Regex.contains (Regex.regex "[A-Za-z]") input)


isSayingNothing : String -> Bool
isSayingNothing =
    String.trim >> (==) ""


hey : String -> String
hey input =
    if isSayingNothing input then
        "Fine. Be that way!"
    else if isYell input then
        "Whoa, chill out!"
    else if isQuestion input then
        "Sure."
    else
        "Whatever."
