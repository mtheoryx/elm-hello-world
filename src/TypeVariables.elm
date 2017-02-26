import Html exposing (..)
import Html.Attributes exposing (..)

numbers =
    [ 1, 2, 3, 4, 5 ]

fruits =
    [ { name = "Orange" }, { name = "Banana" } ]


printNumbers : Int -> Html msg
printNumbers int =
    li [] [ text <| toString int ]

main =
    ul [] (List.map printNumbers numbers)
