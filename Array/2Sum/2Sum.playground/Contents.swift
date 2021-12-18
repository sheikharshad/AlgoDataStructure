import UIKit

//input - [3, 5, -4, 8, 11, 1, -1, 6]
//output - 10


class Program {
  func twoNumberSum(_ array: inout [Int], _ targetSum: Int) -> [Int] {
    // Write your code here.
    var output = [Int]()
    
    for index in array.indices {
        
        for innerIndex  in array.indices {
            if index == innerIndex {
                break
            }
            if array[index] + array[innerIndex] == targetSum {
                output = [array[index], array[innerIndex]]
            }
        }
    }
    return output
  }
    
    
    //with while loop
    func twoNumberSumWhile(_ array: inout [Int], _ targetSum: Int) -> [Int] {
      
        var left = 0
        var right  = array.count - 1
        while left < right {
            let currentTotal = array[left] + array[right]
            if  currentTotal == targetSum {
                return [array[left], array[right]]
            } else if currentTotal < targetSum {
                left += 1
            } else {
                right -= 1
            }
        }
        
      return []
    }
    
    //with Dict
    func twoNumberSumDict(_ array: inout [Int], _ targetSum: Int) -> [Int] {
      
        var dict = [Int: Bool]()
        for item in array {
                   if dict[targetSum - item] == true {
                       return [item , targetSum - item]
                   } else {
                       dict[item] = true
                   }
               }
        
        
      return []
    }
}

let x = Program()
var y =  [3, 5, -4, 8, 11, 1, -1, 6]
print(x.twoNumberSumDict(&y, 10))


