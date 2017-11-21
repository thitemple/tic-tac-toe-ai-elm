module Model exposing (..)


type alias Score =
    { ai : Int
    , human : Int
    }


type alias Model =
    { ended : Bool
    , started : Bool
    , lastMove : String
    , isAiTurn : Bool
    , aiStarted : Bool
    , score : Score
    }


initialModel : Model
initialModel =
    { ended = False
    , started = False
    , lastMove = "das"
    , isAiTurn = True
    , aiStarted = True
    , score =
        { ai = 0
        , human = 0
        }
    }
