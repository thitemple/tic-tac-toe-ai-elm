module View exposing (..)

import Models exposing (Model)
import Msgs exposing (Msg)
import Html exposing (..)
import Html.Attributes exposing (class)
import Html.Events exposing (onClick)


view : Model -> Html Msg
view model =
    div []
        [ text "tic tac toe"
        , newGameButton
        ]


newGameButton : Html Msg
newGameButton =
    div []
        [ button
            [ class "btn btn-primary"
            , onClick Msgs.NewGame
            ]
            [ i [ class "fa fa-play" ] []
            , text "New Game"
            ]
        ]
