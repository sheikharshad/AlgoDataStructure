import UIKit

/*
 #imageLiteral(resourceName: "Screen Shot 2021-12-23 at 2.26.22 PM.png")
 */

//input - [1, 2, 4, 7, 10, 11, 7, 12, 6, 7, 16, 18, 19]

//output - [3, 9]

//explaination - here we need to find the subarray so the idea is to check the next item in array and check if they are correct. For this we need to iterate the loop once.
// So since we need to find the subzarray and not the number in wrong position we
//will find the minItem and the maxItem in the array.
//Once we find the min postion of wrong item in the array we need to iterate
// to find the most lowest item in the array so we ge the exact index of the sub-array


class Program {
    func subarraySort(array: [Int]) -> [Int] {
        
        var minOrderItem = Int(Int16.max)
        var maxOrderItem = -Int(Int16.max)
        //iterate to get the min and max item in array that is not in correct position
        for i in 0..<array.count {
            if isOutOfOrder(i, array[i], array) {
                minOrderItem = min(array[i], minOrderItem)
                maxOrderItem = max(array[i], maxOrderItem)
            }
        }

        if minOrderItem == Int16.max {
            return [-1, -1]
        }
        //get the index of lowest item in array to be sorted
        var subArrayLeftIndex = 0
           while minOrderItem >= array[subArrayLeftIndex] {
               subArrayLeftIndex += 1
           }
        
        //get the index of highest item in array to be sorted
        var subArrayRightIndex = array.count - 1
           while maxOrderItem <= array[subArrayRightIndex] {
               subArrayRightIndex -= 1
           }

        return [subArrayLeftIndex, subArrayRightIndex]
    }
    
    func isOutOfOrder(_ index: Int, _ value: Int, _ array: [Int]) -> Bool {
        
        if index == 0 {
            return value > array[index + 1]
        } else if index == array.count - 1 {
            return value < array[index - 1]
        } else {
           return value > array[index + 1] || value < array[index - 1]
        }
    }
}

var obj = Program()
let input =  [1, 2, 4, 7, 10, 11, 7, 12, 6, 7, 16, 18, 19]
print(obj.subarraySort(array: input))


