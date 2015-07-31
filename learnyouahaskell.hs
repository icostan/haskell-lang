doubleMe x = x + x  
doubleUs x y = doubleMe x + doubleMe y
doubleSmallNumber x = if x > 100  
                        then x  
                        else x*2
doubleSmallNumber' x = (if x > 100 then x else x*2) + 1

-- let lostNumbers = [4,8,15,16,23,42]

cons = 'A' : " SMALL CAT"
element i = "Steve Buscemi" !! i

-- lists
list_equal = [3,2,1] > [2,1,0]
list_head = head [5,4,3,2,1]

-- ranges
range_with_step = [2,4..20]
take_cycle = take 10 (cycle [1,2,3])

-- comprehension
comprehension = [ x*3 | x <- [1..10], x*2 >= 12 ]
boomBangs xs = [ if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]
combinations = [ x*y | x <- [2,5,10], y <- [8,10,11]]
length' xs = sum [1 | _ <- xs]
removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]

-- tuples
tuples = [(1,2),(8,11),(4,5)]
first = fst (8,11)
zipme = zip [5,3,2,6,2,7,2,5,4,6,6] ["im","a","turtle"]

rightTriangles = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b],
                                  a^2 + b^2 == c^2, a+b+c == 24]  
