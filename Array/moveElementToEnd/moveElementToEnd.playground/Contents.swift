import UIKit

//#imageLiteral(resourceName: "Screen Shot 2021-12-19 at 8.13.09 AM.png")

// input - [2, 1, 2, 2, 2, 3, 4, 2]
//ouput - 2
class Program {
    
    
    //we make 2 pt. here. one is at start that is left and one is at right that is at end.
    //Both the pt. value compare to the "toMove" value.
    // We will swap the items from left to right so that all the items at left which is not equal to "toMove" moved to the end.
    //We only swap the left to right if the left item is "toMove" and the right item is not "toMove"
    //Once the right pt. find the toMove it iterates again  to the right so that it covers all the toMove items. [ 1, 5, 2,2,2] here it itertes the 3 times 2.
    
    
    
    //the first loop is to iterate the whole data  while left < right
    
    // the second loop is to make sure that the similar pt. dont overlap each other right < left
    // array[right] == toMove -> this condition is to make sure that the right pt moves ahead of similar items.
    
    func moveElementToEnd(_ array: inout [Int], _ toMove: Int) -> [Int] {
        var left = 0
        var right = array.count - 1
        while left < right {
            
            while left < right, array[right] == toMove {// move the right pt. for repetative items
                right -= 1
            }
            if array[left] == toMove {
                array.swapAt(left, right)
            }
            left += 1
        }
        return array
    }
}

var obj = Program()
var input = [2, 1, 2, 2, 2, 3, 4, 2]

print(obj.moveElementToEnd(&input, 2))

