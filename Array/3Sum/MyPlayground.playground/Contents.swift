import UIKit

/*
We have to write a func that takes a non-empty array of unique int and a int representing target sum.
The func should find all triplets in array that sum up to target sum and return 2 Dimension
array of all triplets. The triplets internally should be in ascending order.

input = [12, 3, 1, 2, -6, 5, -8, 6]
sum = 0


Output
[[-8,2,6], [-8, 3, 5], [-6, 1, 5]]
*/


class Program {
   //using 3 pointers one at start one at end and one just next to the start pointer
  func threeNumberSum(array: inout [Int], targetSum: Int) -> [[Int]] {
    // Write your code here.
      var threeSum =  [[Int]]()
      array.sort()
      print(array)
      
      for i in 0..<array.count - 2 {
          
          var right = array.count - 1
          var left = i + 1
          print(left)
          while left < right {
              
              let currentSum = array[i] + array[left] + array[right]
              print([ array[i], array[left], array[right]])
              if currentSum == targetSum {
                  
                  threeSum.append([ array[i], array[left], array[right]])
                  right -= 1
                  left += 1
              } else if currentSum > targetSum {
                  right -= 1
              } else {
                  left += 1
              }
          }
      }
      
      
   return threeSum
 }

}

var obj = Program()
var inputArray = [12, 3, 1, 2, -6, 5, -8, 6]
print(obj.threeNumberSum(array: &inputArray, targetSum: 0))
