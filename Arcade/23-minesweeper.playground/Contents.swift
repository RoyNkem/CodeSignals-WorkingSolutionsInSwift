/*
 In the popular Minesweeper game you have a board with some mines and those cells that don't contain a mine have a number in it that indicates the total number of mines in the neighboring cells. Starting off with some arrangement of mines we want to create a Minesweeper game setup.

 Example

 For

 matrix = [[true, false, false],
           [false, true, false],
           [false, false, false]]
 the output should be

 solution(matrix) = [[1, 2, 1],
                        [2, 1, 1],
                        [1, 1, 1]]
 */

func solution(matrix: [[Bool]]) -> [[Int]] {
var result = [[Int]]()
let surrounding = [(-1,-1),(-1,0),(-1,1),(0,-1),(0,1),(1,-1),(1,0),(1,1)]

for row in 0..<matrix.count
{
    var newRow = [Int]()
    for col in 0..<matrix[row].count
    {
        var total = 0
        for cellAddress in surrounding
        {
            let (cellRow, cellCol) = cellAddress
            if row + cellRow >= 0 && row + cellRow < matrix.count &&
                col + cellCol >= 0 && col + cellCol < matrix[row].count &&
                matrix[row + cellRow][col + cellCol]
            {
                total += 1
            }
        }
        newRow.append(total)
    }
    result.append(newRow)
}
    return result
}


//Test
let a = [[Bool]]()
solution(matrix: a)
