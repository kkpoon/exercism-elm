module Raindrops exposing (raindrops)


raindrops : Int -> String
raindrops input =
    List.range 1 input
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
