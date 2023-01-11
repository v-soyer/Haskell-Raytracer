module Main where

import Codec.Picture
import System.Environment

main :: IO ()
main = do
  [path] <- getArgs
  savePngImage path generateImg

generateImg :: DynamicImage
generateImg = ImageRGB8 (generateImage originalFnc 1920 1080)

originalFnc :: Int -> Int -> PixelRGB8
originalFnc x y =
  let (q, r) = x `quotRem` max 10 y
      s      = fromIntegral . min 0xff
  in PixelRGB8 (s q) (s r) (s (q + r + 30))
