module Main exposing (..)
import Html

(~+) a b =
    a + b + 0.2

result =
    -- add 1 2
    (~+) 1 2

main =
    Html.text (toString result)


