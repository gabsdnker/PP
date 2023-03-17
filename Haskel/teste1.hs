conta :: [Int] -> Int
conta [] = 0
conta (c : r) = 1 + conta r
