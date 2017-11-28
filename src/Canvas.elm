module Canvas exposing (renderBox)

import Collage exposing (Form, collage, filled, move, rect)
import Color
import Element exposing (toHtml)
import Html exposing (..)


lines : Float -> List ( Float, Float, Float, Float )
lines size =
    let
        diff =
            (size / 2) - (size / 3)

        lineWidth =
            2
    in
    [ ( size, lineWidth, 0, diff )
    , ( size, lineWidth, 0, -diff )
    , ( lineWidth, size, -diff, 0 )
    , ( lineWidth, size, diff, 0 )
    ]


drawFrame : List ( Float, Float, Float, Float ) -> List Form
drawFrame =
    List.map
        (\( x, y, left, top ) ->
            rect x y
                |> filled Color.lightPurple
                |> move ( left, top )
        )


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
