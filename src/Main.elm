module Main exposing (add, output)


output : String
output =
    "1 + 1 = " ++ String.fromInt (add 1 1)


add : number -> number -> number
add a b =
    a + b
