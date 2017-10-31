module View exposing (..)

import Models exposing (Model)
import Msgs exposing (Msg)
import Html exposing (..)


view : Model -> Html Msg
view model =
    div []
        [ text model ]
