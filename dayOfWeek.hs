data Day = Sunday | Monday | Tuesday | Wednesday | Thursday | Friday | Saturday
          deriving(Enum, Show)
data Month = Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec
          deriving(Enum, Read)

type Date  = (Int, Month, Int)

leap :: Int -> Bool
leap y
  | y `mod` 400 == 0 && y `mod` 100 == 0 = True
  | y `mod` 4 == 0 && y `mod` 100 /= 0 = True
  | otherwise = False

mLengths :: Int -> [Int]
mLengths y
  | leap y == True = [31,29,31,30,31,30,31,31,30,31,30,31]
  | otherwise = [31,28,31,30,31,30,31,31,30,31,30,31]

numDays :: Date -> Int
numDays (d, m, y)
  | y == 1753 = d + sum(take(fromEnum m)(mLengths y))  --take takes two parameters the position that it takes until and the list
  | otherwise = sum (mLengths y) + numDays (d, m, y-1)

dayOfWeek :: Date -> Day
dayOfWeek d = toEnum (((numDays d)-1) `mod` 7)
