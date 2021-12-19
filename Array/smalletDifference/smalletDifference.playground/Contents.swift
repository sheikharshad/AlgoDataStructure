import UIKit

var greeting = "Hello, playground"
//#imageLiteral(resourceName: "Screen Shot 2021-12-19 at 7.18.31 AM.png")

class Program {
    
  func smallestDifference(arrayOne: inout [Int], arrayTwo: inout [Int]) -> [Int] {

      
      //we take the minDifferene and keep upddating it so we know which is the min of all of them
      var minDifference = Int.max
      
      var outputArray = [Int]()
      //sort both the arrays so we know when we are iterating the loop with the pointer we know
      //which direction we are going and its very easy to move the pointer
      arrayOne.sort()
      arrayTwo.sort()
      var arrayOneIndex = 0
      var arrayTwoIndex = 0
      print(arrayOne, arrayTwo)
      // iterate both the array at same time as they are sorted and we are uust moving the //pointers.
      while arrayOneIndex < arrayOne.count, arrayTwoIndex < arrayTwo.count {
          
          let firstNum = arrayOne[arrayOneIndex]
          let secondnum =  arrayTwo[arrayTwoIndex]
          
          let currentDiff = abs(firstNum - secondnum)

          //if the firstNum is less than we increment the left pointer(pt. of first array)
          //becauz if move the other array pt. that it will more greater number and we are searching the smallest number.
          
          if firstNum < secondnum {// move first arry pt.
              arrayOneIndex += 1
          } else if firstNum > secondnum {// move 2nd arry pt.
              arrayTwoIndex += 1
          } else { //both are same, they r the smallest
              return [firstNum, secondnum]
          }
          if currentDiff < minDifference {
              print(currentDiff, minDifference)
              minDifference = currentDiff
              outputArray = [firstNum,  secondnum]
          }
      }
    return outputArray
  }
}

var obj = Program()
var x = [-1, 5, 10, 20, 28, 3]
var y = [26, 134, 135, 15, 17]
print(obj.smallestDifference(arrayOne: &x, arrayTwo: &y))

