module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Json.Encode exposing (..)
import Html exposing (beginnerProgram)
import Html.Events exposing (..)
-- Four Parts
-- model, update, view

type alias Model =
    { showFace: Bool }

model: Model

model =
    { showFace = False }

type Msg =
    ShowFace

-- This is a pure function
update msg model_ =
    case msg of
        ShowFace -> { model_ | showFace = True }

view model =
    div []
        [ h1 [] [ text "Face generator" ]
        , button [ onClick ShowFace ] [ text "Face me" ]
        , if model.showFace then
            span [ property "innerHTML" (Json.Encode.string "&#9786;") ] []
          else
            span [] []
        ]

main =
    beginnerProgram
        { model = model
        , update = update
        , view = view
        }
