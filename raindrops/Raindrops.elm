module Raindrops exposing (raindrops)


raindrops : Int -> String
raindrops input =
    [ 3, 5, 7 ]
        |> List.filter (\n -> rem input n == 0)
        |> List.map
            (\n ->
                case n of
                    3 ->
                        "Pling"

                    5 ->
                        "Plang"

                    7 ->
                        "Plong"

                    _ ->
                        ""
            )
        |> String.concat
        |> (\t ->
                case t of
                    "" ->
                        toString input

                    _ ->
                        t
           )
