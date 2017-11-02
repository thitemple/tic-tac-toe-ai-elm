module Update exposing (..)

import Msgs exposing (Msg(..))
import Models exposing (Model, initialModel)


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NewGame ->
            ( initialModel, Cmd.none )

        SelectPosition ->
            ( model, Cmd.none )

        AskAiMove ->
            ( model, Cmd.none )

        AiMove ->
            ( model, Cmd.none )
