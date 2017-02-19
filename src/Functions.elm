module Hello exposing(..)

import Html exposing (text)

ask thing =
	"is there a " ++ thing ++ "?"

main = text "Hello, badass!"
