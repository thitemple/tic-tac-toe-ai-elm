module Canvas exposing (renderBox)

import Collage exposing (filled, rect, collage, Form)
import Element exposing (toHtml)
import Html exposing (..)
import Color exposing (purple)


buildBase : Int -> Form
buildBase x =
    rect (toFloat x) (toFloat x)
        |> filled purple


renderBox : Int -> Html msg
renderBox size =
    collage size size [ buildBase size ]
        |> toHtml
