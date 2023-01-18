-- listmonster.png (http://s3.amazonaws.com/lyah/listmonster.png) meio "cansado" :D

import Text.Printf

-- String inicial do SVG
svgBegin :: Float -> Float -> String
svgBegin w h = printf "<svg width='%.2f' height='%.2f' xmlns='http://www.w3.org/2000/svg'>\n" w h 

-- String final do SVG
svgEnd :: String
svgEnd = "</svg>"

svgCircle :: Int -> Int -> Int -> String -> String 
svgCircle x y r style = 
  printf "<circle cx='%d' cy='%d' r='%d' fill='%s' />\n" x y r style

-- Gera SVG com 2 círculos, um verde e um vermelho, com 0.4 de opacidade.
-- A opacidade pode não ser suportada em alguns visualizadores de SVG.
svgAll :: String
svgAll = 
  svgBegin 500 500 ++ 
  (svgCircle 150 180 50 "rgb(250, 250, 0, 1)") ++ 
  (svgCircle 235 180 50 "rgb(250, 250, 0, 0.5)") ++
  (svgCircle 320 180 50 "rgb(250, 250, 0, 0.5)") ++
  (svgCircle 140 205 10 "rgb(250, 0, 0, 0.75)") ++
  (svgCircle 100 180 15 "rgb(139, 69, 19, 1)") ++
  (svgCircle 125 160 10 "rgb(0, 0, 0, 1)") ++
  (svgCircle 155 160 10 "rgb(0, 0, 0, 1)") ++
  (svgCircle 220 240 10 "rgb(255, 0, 0, 1)") ++
  (svgCircle 250 240 10 "rgb(255, 0, 0, 1)") ++
  (svgCircle 310 240 10 "rgb(255, 0, 0, 1)") ++
  (svgCircle 340 240 10 "rgb(255, 0, 0, 1)") ++
  (svgCircle 235 180 150 "rgb(0, 255, 0, 0.1)") ++
  svgEnd

main :: IO ()
main = do
  writeFile "circles.svg" svgAll