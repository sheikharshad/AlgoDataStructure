import UIKit

//#imageLiteral(resourceName: "Screen Shot 2021-12-20 at 12.28.42 PM.png")


//input - [5, 1, 4, 2]
//output - [8, 40, 10, 20]
//8 is equal  to 1*4 *2
//40 is equal to 5*4*2
//10 is equal to 5*1*2
//20 is equal to 5*1*4

class Program {
  func arrayOfProducts(_ array: [Int]) -> [Int] {
        var outputArray = [Int]()
      
      for i in 0..<array.count {
          
          var item = 1
          
          for j in 0..<array.count {
              
              if i != j {
                  item *= array[j]
              }
          }
          outputArray.append(item)
          
      }
    return outputArray
  }
}

var obj = Program()
print(obj.arrayOfProducts( [5, 1, 4, 2]))
