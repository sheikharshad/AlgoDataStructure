import UIKit


/*
 #imageLiteral(resourceName: "Screen Shot 2021-12-24 at 12.21.19 AM.png")
 */

//input = [1, 11, 3, 0, 15, 5, 2, 4, 10, 7, 12, 6]

/*
 here we are saving all the items in dict with the bool param as true
We than iterate all the items in array
 While iterating we take each item in array and check the left range till how long it can go and similarly when we take the right one we check till how long it can go.
While iterating we also make sure to make the item dict as false as we dont need to iterate the same number again. Why ? -> becauz we need to find the range that is the number coming one after the other so if we iterate a range we know already that till what end we can reach.
 
 
We also compare the value with a var to save the largest range.
 We save the largest range in the array as left and right value that is
 there in the range that we iterated.
 */
class Program {
    func largestRange(array: [Int]) -> [Int] {
        
        var largestRange = [Int]()
        var largestRangeLength = 0
        var dict = [Int: Bool]()
        
        //init all items with false
        for item in array {
            dict[item] = true
        }
        
        for item in array {
            
            if dict[item] == false {
                continue
            }
            
            var currentRange = 1
            var left = item - 1
            while dict.keys.contains(left) {
                dict[left] = false
                left -= 1
                currentRange += 1
            }

            var right = item + 1
            while dict.keys.contains(right) {
                dict[right] = false
                right += 1
                currentRange += 1
            }
            
            if currentRange > largestRangeLength {
                largestRangeLength = currentRange
                largestRange = [left + 1, right - 1]
            }
        }
        return largestRange
    }
}

var obj = Program()
let input = [1, 11, 3, 0, 15, 5, 2, 4, 10, 7, 12, 6]
print(obj.largestRange(array: input))

