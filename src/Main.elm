module Main exposing (main)

import Box exposing (..)
import Gather exposing (gatherBoxes)
import Recursion exposing (sideBoxes, cornerBoxes)
import Picture exposing (..)
import Letter exposing (..)
import Figure exposing (george)
import Fishy exposing (fishShapes)
import Fitting exposing (createPicture)
import Html exposing (Html)
import Decor exposing (draw)

main : Html msg
main = 
  let 
    box = { a = { x = 100.0, y = 50.0 }
          , b = { x = 300.0, y = 0.0 }
          , c = { x = 0.0, y = 300.0 } }
    fish = createPicture fishShapes
    f = createPicture fLetter
    g = createPicture george 
  in     
    box |> squareLimit 4 fish 
        |> draw []

