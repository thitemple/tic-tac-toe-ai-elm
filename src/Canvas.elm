module Canvas exposing (renderBox)

import Collage exposing (filled, rect, collage, Form, move)
import Element exposing (toHtml)
import Html exposing (..)
import Color


lines : Float -> List ( Float, Float, Float, Float )
lines size =
    [ ( size, 5, 0, 30 )
    , ( size, 5, 0, -30 )
    , ( 5, size, -30, 0 )
    , ( 5, size, 30, 0 )
    ]


drawFrame : List ( Float, Float, Float, Float ) -> List Form
drawFrame lines =
    lines
        |> List.map (\( x, y, left, top ) -> rect x y |> filled Color.lightPurple |> move ( left, top ))


drawBase : Float -> Form
drawBase x =
    rect x x
        |> filled (Color.rgb 17 17 17)


renderBox : Int -> Html msg
renderBox size =
    let
        forms =
            [ drawBase (toFloat size) ] ++ drawFrame (lines (toFloat size))
    in
        collage size size forms
            |> toHtml
