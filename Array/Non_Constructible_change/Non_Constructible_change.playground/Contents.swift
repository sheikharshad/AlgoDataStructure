import UIKit

/*
 #imageLiteral(resourceName: "Screen Shot 2021-12-22 at 7.34.10 PM.png")
 */

//input - [5, 7, 1, 1, 2, 3, 22]
//output - 20


//this as a formula where in we have to sort the array
//than we need to check as we iterate to the coinsList
//if the minCoins +1 is greater than the next coin we cannot create the next change of MinCoins + 1.
// so this is been used in the program
class Program {
  func nonConstructibleChange(_ coins: inout [Int]) -> Int {
    // Write your code here.
      
      coins.sort()
      
      var minCoins = 0
      
      for item in coins {
          
          if item > (minCoins + 1) {
              return minCoins + 1
          }
          
          minCoins += item
          
      }
      
    return minCoins + 1
  }
}

var obj = Program()
var x = [5, 7, 1, 1, 2, 3, 22]
print(obj.nonConstructibleChange(&x))

