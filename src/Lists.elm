module Main exposing (..)

import Html exposing (text)

type alias Person =
    { name: String
    , age: Int
    }

people =
    [ { name = "Legolas", age = 2931}
    , { name = "Gimli", age = 139 }
    ]

main =
    text <| toString <| people
