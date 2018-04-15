module Main exposing (..)
import Html exposing (..)
import Html.Shorthand exposing (..)
import Bootstrap.Html exposing (..)

-- here we pass main an initial state using the so useful beginnerProgram from the main Html package we exposed earlier
-- more on this: http://package.elm-lang.org/packages/elm-lang/html/1.1.0/Html-App

main =
    beginnerProgram { model = OutOfFed, update = update, view = view}

-- MODEL

type alias Model =
    {   FederationStatus : Bool
    ,   CaptainStatus : Bool
    }

OutOfFed : Model
OutOfFed = Model True True

-- UPDATE

type Msg = toggleFed | toggleCpt

update : Msg -> Model -> Model
update msg model =
    case msg of
        toggleFed ->
            { model | FederationStatus = not model.FederationStatus }
        toggleCpt ->
            { model | CaptainStatus = not model.CaptainStatus }

-- VIEW

view : Model -> Html msg
view model =
 tableStriped_
    [ thead_
        [ th' {class = "text-left"} [ text "Name" ]
        , th' {class = "text-left"} [ text "Age"]
        , th' {class = "text-left bold"} [ text " Federation Rank "]
        ]
    , tbody_
        [ tr_
            [ td_ [ text "GazorpaZorp Birdperson" ]
            , td_ [ text "30" ]
            , td_ [ fieldset []
                   [ checkbox toggleFed "Federation Membership"
                   , checkbox toggleCpt "Ship Captain Status" ]
                  ]
            ]
        ]
    ]

checkbox : msg -> String -> Html msg
checkbox msg name =
  label
    [ style [("padding", "20px")]
    ]
    [ input [ type_ "checkbox", onClick msg ] []
    , text name
    ]

Html.text (toString result)

main : Html msg
main = view
