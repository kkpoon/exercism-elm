module Pangram exposing (isPangram)

import Char exposing (toCode, fromCode)
import String


isPangram : String -> Bool
isPangram input =
    let
        contains input c =
            String.contains (String.fromChar c) (String.toLower input)
    in
        List.range 0 25
            |> List.map (\i -> toCode 'a' + i |> fromCode)
            |> String.fromList
            |> String.all (contains input)
