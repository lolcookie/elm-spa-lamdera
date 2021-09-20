module Backend exposing (..)

import Lamdera exposing (..)
import Types exposing (..)


type alias Model =
    BackendModel


app : { init : (Model, Cmd BackendMsg), update : BackendMsg -> Model -> (Model, Cmd BackendMsg), updateFromFrontend : SessionId -> ClientId -> ToBackend -> Model -> (Model, Cmd BackendMsg), subscriptions : Model -> Sub BackendMsg }
app =
    Lamdera.backend
        { init = init
        , update = update
        , updateFromFrontend = updateFromFrontend
        , subscriptions = \_ -> Sub.none
        }


init : ( Model, Cmd BackendMsg )
init =
    ( { message = "stub"
      }
    , Cmd.none
    )


update : BackendMsg -> Model -> ( Model, Cmd BackendMsg )
update msg model =
    case msg of
        NoOpBackendMsg ->
            ( model, Cmd.none )


updateFromFrontend : SessionId -> ClientId -> ToBackend -> Model -> ( Model, Cmd BackendMsg )
updateFromFrontend _ _ msg model =
    case msg of
        NoOpToBackend ->
            ( model, Cmd.none )
