import UIKit


// #imageLiteral(resourceName: "Screen Shot 2021-12-18 at 5.06.55 PM.png")

//[5, 1, 22, 25, 6, -1, 8, 10]
//[1, 6, -1, 10]

class Program {
    func isValidSubsequenceWithWhileLoop(_ array: [Int], _ sequence: [Int]) -> Bool {
        // Write your code here.
        var mainArrayIndex = 0
        var seqArrayIndex = 0
        
        while mainArrayIndex < array.count, seqArrayIndex < sequence.count {
            
            if array[mainArrayIndex] == sequence[seqArrayIndex] {
                seqArrayIndex += 1
            }
            
            mainArrayIndex += 1
            
            if seqArrayIndex == sequence.count {
                print("I reached")
                return true
            }
        }
        return false
    }
    
    func isValidSubsequenceWithForLoop(_ array: [Int], _ sequence: [Int]) -> Bool {
        // Write your code here.
        var seqArrayIndex = 0
        
        for item in array where seqArrayIndex < sequence.count {
            
            
            if item == sequence[seqArrayIndex] {
                seqArrayIndex += 1
            }
            
            if seqArrayIndex == sequence.count {
                return true
            }
            
        }
        
        return false
    }
}


var obj = Program()
//print(obj.isValidSubsequenceWithWhileLoop([5, 1, 22, 25, 6, -1, 8, 10], [1, 6, -1, 10]))

print(obj.isValidSubsequenceWithForLoop([5, 1, 22, 25, 6, -1, 8, 10], [1, 6, -1, 10]))
