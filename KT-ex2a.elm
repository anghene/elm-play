module Main exposing (..)
import Html
import String

uppercase name =
    if  String.length name > 10 then
        String.toUpper name
    else
        name

main =
    Html.text (uppercase "Vladimirova")
