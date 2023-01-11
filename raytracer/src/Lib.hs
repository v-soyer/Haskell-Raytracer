module Lib
    ( someFunc
    ) where

import Graphics.Gloss

someFunc :: IO ()
someFunc = display FullScreen white (Circle 540)