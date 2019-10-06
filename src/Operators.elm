module Operators exposing (showNumberUtil)


showNumberUtil : Int -> String
showNumberUtil max =
    List.range 1 max
        |> List.map String.fromInt
        |> String.join ","
