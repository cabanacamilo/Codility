import UIKit

/////////////////////////////////////////////Lesson 4.1

public func permutation(array: [Int])-> Int{
    let sortedArray = array.sorted()
    var count = 0
    if sortedArray[0] <= 1{
        for index in 0...sortedArray.count - 1{
            count = count + 1
            if index + 1 < sortedArray.count{
                if sortedArray[index] + 1 != sortedArray[index + 1]{
                    break
                }
            }
        }
        if count == sortedArray.count{
            return 1
        }
    }
    return 0
}
