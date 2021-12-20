import UIKit

//#imageLiteral(resourceName: "Screen Shot 2021-12-19 at 5.50.48 PM.png")


class Program {
    
    func longestPeak(array: [Int]) -> Int {
        guard array.count > 2 else {
            return 0
        }
        var peak = 0
        var index = 1
        while index < array.count - 1 {
            
            //finding peak condition
            // this is done to make sure v are filtering all the values that dont form the peak
            if !(array[index - 1] < array[index] && array[index] > array[index + 1]) {
                index += 1
                continue
            }
            
            // after we got a peak of 3 from above condition we are checking the left side of peak
            // so we are doing a minus of 2 and traverse
            var leftIndex = index - 2
            while (leftIndex >= 0), array[leftIndex] < array[leftIndex + 1] {
                leftIndex -= 1
            }
            
            // after we got a peak of 3 from above find a peak icondition we are checking the right side of peak and seeing till where we can traverse
            // so we are doing a minus of 2
            var rightIndex = index + 2
            while (rightIndex < array.count - 1),
                  array[rightIndex] < array[rightIndex - 1] {
                rightIndex += 1
            }
            
            // the current peak will be rightIndex minus the leftIndex
            let cuurrentPeak = rightIndex - leftIndex - 1
            print(cuurrentPeak)
            if cuurrentPeak > peak {
                peak = cuurrentPeak
            }
            // here we are putting the index at rightIndex as we already traverse the peak and there is no way there can be other peak in the decreasing value of the current peak. Remember we filter the non-peak in  the FindAPeak condition.
            index = rightIndex
        }
        return peak
    }
}

var obj = Program()
print(obj.longestPeak(array: [1, 2, 3, 3, 4, 0, 10, 6, 5, -1, -3, 2, 3]))

