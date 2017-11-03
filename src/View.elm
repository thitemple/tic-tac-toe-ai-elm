module View exposing (..)

import Models exposing (Model, Score)
import Msgs exposing (Msg)
import Html exposing (..)
import Html.Attributes exposing (class, id, width, height)
import Html.Events exposing (onClick)


view : Model -> Html Msg
view model =
    div [ class "flex flex-column items-center" ]
        [ score model.score
        , gameCanvas model
        , newGameButton
        ]


gameCanvas : Model -> Html Msg
gameCanvas model =
    div []
        [ canvas
            [ id "myCanvas"
            , width 200
            , height 200
            ]
            []
        ]


score : Score -> Html Msg
score score =
    div [ class "ttt-score regular h3" ]
        [ i [ class "fa fa-user" ] []
        , text (toString score.human)
        , text "x"
        , text (toString score.ai)
        , i [ class "fa fa-mobile" ] []
        ]


newGameButton : Html Msg
newGameButton =
    div []
        [ button
            [ class "btn btn-primary ttt-new-game"
            , onClick Msgs.NewGame
            ]
            [ i [ class "fa fa-play" ] []
            , text "New Game"
            ]
        ]
