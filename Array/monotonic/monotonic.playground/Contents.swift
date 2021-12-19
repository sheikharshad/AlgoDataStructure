import UIKit


//#imageLiteral(resourceName: "Screen Shot 2021-12-19 at 11.18.37 AM.png")

//input - -1, -5, -10, -1100, -1100, -1101, -1102, -9001]

/*
 her we have to check if the array is increasing continuous or decreasing continuous
 but we have to ignore if the items are repeacting in the array.
 */
class Program {
  func isMonotonic(array: [Int]) -> Bool {
      var inc = true
      var dec = true
      for i in array.indices.dropLast() {
          
          if array[i] == array[i + 1]
          {
              continue
          }
          if  inc && array[i] > array[i + 1]  {
              dec = false
              continue
          }
          
          if  dec && array[i] < array[i + 1] {
              inc = false
              continue
          }
          inc = false
          dec = false
      }
    return inc || dec
  }
}


var x = Program()
print(x.isMonotonic(array: [1, 2, 3, 3, 2, 1]))

