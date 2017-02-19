module Hello exposing(..)

import Html exposing (text)

ask : String -> String -> String
ask thing place =
    "is there a "
        ++ thing
        ++ " in the "
        ++ place
        ++ "?"

main =
    text <| ask "fish" "sock"
