isTemp :: Float -> Bool
isTemp t = t >= 37.8

hasFever :: [Float] -> [Float]
hasFever f = filter isTemp f

hasFever' :: [Float] -> [Float]
hasFever' f = filter (\x -> x >= 37.8) f

itemize :: [String] -> [String]
itemize s = map (\x -> "<li>" ++ x ++ "</li>") s

bigCircles :: Float -> [Float] -> [Float]
bigCircles f list = filter (\x -> pi*x^2 > f) list

quarentine :: [(String,Float)] -> [(String,Float)]
quarentine tList = filter (\(_,b) -> isTemp b) tList

agesIn :: [Int] -> Int -> [Int]
agesIn list age = map (\x -> age-x) list

--Escreva uma função superNames :: [String] -> [String] que receba uma lista de nomes e adicione o prefixo "Super " às strings que começarem com a letra A (maiúscula), deixando as demais inalteradas. A lista resultante, portanto, terá a mesma quantidade de strings da lista original.
--addSuper :: String -> String
--addSuper s = "Super " ++ s
--superNames :: [String] -> [String]
--superNames sList = 

onlyShorts :: [String] -> [String]
onlyShorts s = filter (\x -> length(x) < 5) s