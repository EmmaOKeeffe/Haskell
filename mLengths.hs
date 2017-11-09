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
mLengths y = [31,feb,31,30,31,30,31,31,30,31,30,31]
             where
             feb = if leap y then 29 else 28
