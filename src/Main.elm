module Main exposing (Language(..), User(..), add, doubleFirstValue, greet, greetInJa, message, output, sum, sumAll)


type Language
    = En
    | Ja
    | Fr


type User
    = LoggedIn Bool String
    | Guest


output : String
output =
    "1 + 1 = " ++ String.fromInt (add 1 1)


add : number -> number -> number
add a b =
    a + b


greet : Language -> String
greet lang =
    case lang of
        En ->
            "hello"

        Ja ->
            "こんにちは"

        Fr ->
            "Bonjour"


greetInJa =
    greet Ja


message : User -> String
message user =
    case user of
        LoggedIn True name ->
            "こんにちは、" ++ name ++ "（管理者）さん"

        LoggedIn False name ->
            "こんにちは、" ++ name ++ "さん"

        Guest ->
            "こんちは、ゲストさん"


sum : Int -> Int
sum n =
    if n == 1 then
        1

    else
        n + sum (n - 1)


showFirstValue : List Int -> String
showFirstValue list =
    case List.head list of
        Just value ->
            String.fromInt value

        Nothing ->
            "Empty!"


doubleFirstValue : List String -> Int
doubleFirstValue list =
    List.head list
        |> Maybe.andThen String.toInt
        |> Maybe.map (\n -> n * 2)
        |> Maybe.withDefault 0


sumAll : List number -> number
sumAll list =
    List.foldl (\n acm -> n + acm) 0 list
