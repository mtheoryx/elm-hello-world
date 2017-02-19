module Main exposing (..)

import Html exposing (text)
import List

type alias Person =
    { name: String
    , age: Int
    }

people =
    [ { name = "Legolas", age = 2931}
    , { name = "Gimli", age = 139 }
    ]

name: List Person -> List String
name peeps = List.map (\peep -> peep.name) peeps

main =
    text
        <| toString
        <| name people
