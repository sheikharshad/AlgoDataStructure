import UIKit

/*

#imageLiteral(resourceName: "Screen Shot 2021-12-22 at 8.09.15 PM.png")
*/
//input - [1, 2, 3, 5, 6, 8, 9]
class Program {
  func sortedSquaredArray(_ array: [Int]) -> [Int] {
    // Write your code here.
     if  array.isEmpty {
        return []
      }
    var result = [Int]()
      for item in array {
          //result.append(Int(sqrt(Double(item))))
        result.append(item*item)
      }
      
    return result
  }
}

var obj = Program()
var x = [1, 2, 3, 5, 6, 8, 9]
print(obj.sortedSquaredArray(x))
