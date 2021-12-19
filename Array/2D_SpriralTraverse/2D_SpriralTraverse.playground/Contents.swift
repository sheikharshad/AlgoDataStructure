import UIKit


//#imageLiteral(resourceName: "Screen Shot 2021-12-19 at 1.59.07 PM.
/*
//input - [
[1, 2, 3, 4],
[12, 13, 14, 5],
[11, 16, 15, 6],
[10, 9, 8, 7]
]
*/

class Program {
   func spiralTraverse(array: [[Int]]) -> [Int] {
   
    if array.count == 0 {
        return []
    }
    
    var result = [Int]()
    var startColumn = 0
    var startRow = 0
    var endColumn = array[0].count - 1
    var endRow = array.count - 1
        
    while startColumn <= endColumn, startRow <= endRow {
        
        //here 1st row is constant but col will change
        for col in stride(from: startColumn, through: endColumn, by: 1) {
            result.append(array[startRow][col])
        }
     
        //here last col  is constant but row will change
        for row in stride(from: startRow + 1, through: endRow, by: 1) {
            result.append(array[row][endColumn])
        }
        
        //here last row  is constant but col will change
        for col in stride(from: endColumn - 1, through: startColumn, by: -1) {
            // this is written to handle uneven array where there is sinlge row in middle of array
            if startRow == endRow {break}
            
            result.append(array[endRow][col])
        }
        
        //here last col  is constant but row will change
        for row in stride(from: endRow - 1, through: startRow + 1, by: -1) {
            // this is written to handle uneven array where there is sinlge column in middle of array
            if startColumn == endColumn {break}
            
            result.append(array[row][startColumn])
        }
        startColumn += 1
        startRow += 1
        endColumn -= 1
        endRow -= 1
    }
    return result
  }
}

var obj = Program()
var input = [
    [1, 2, 3, 4],
    [12, 13, 14, 5],
    [11, 16, 15, 6],
    [10, 9, 8, 7]
    ]
print(obj.spiralTraverse(array: input))
