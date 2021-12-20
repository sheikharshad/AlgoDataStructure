import UIKit

/*
 #imageLiteral(resourceName: "Screen Shot 2021-12-20 at 4.22.13 PM.png")
 */

//input - [2, 1, 5, 2, 3, 3, 4]
//Output - 2 - as 2 is the first int that appears more than once
class Program {
  
    func firstDuplicateValue(_ array: inout [Int]) -> Int {
      // Write your code here.
        var dict = [Int: Bool]()
        
          for index in array.indices {
            
            if dict[array[index]] == true {
                return array[index]
            }
            dict[array[index]] = true
            
        }
      return -1
    }
}

var obj = Program()
var ary =  [4, 7, 7, 14, 14, 10, 15, 14, 14, 16, 14, 11, 5, 12, 17, 7, 1, 6, 13]
print(obj.firstDuplicateValue(&ary))


