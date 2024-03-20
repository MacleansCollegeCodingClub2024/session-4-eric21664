module Number_up_down exposing (..)
import Browser
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)



-- MAIN

main =
  Browser.sandbox { init = init, update = update, view = view }



-- MODEL

type alias Model = Int

init : Model
init =
  0


-- UPDATE

type Msg = Increment1 | Decrement1 | Increment10 | Decrement10 | Reset

update : Msg -> Model -> Model
update msg model =
  case msg of
    Increment1 ->
      model + 1

    Decrement1 ->
      model - 1

    Increment10 ->
      model + 10

    Decrement10 ->
      model - 10

    Reset ->
      0


-- VIEW

view : Model -> Html Msg
view model =
  div []
    [ button [ onClick Increment1 ] [ text "+ 1" ]
    , button [onClick Increment10] [ text "+ 10"]
    , div [] [ text (String.fromInt model) ]
    , button [ onClick Decrement1 ] [ text "- 1" ]
    , button [onClick Decrement10] [ text "- 10"]
    , button [onClick Reset ] [ text "Reset"]
    ]
