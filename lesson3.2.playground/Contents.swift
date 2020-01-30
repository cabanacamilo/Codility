import UIKit

/////////////////////////////////////////lesson 3.2

public func PermMissingElem(array: [Int])-> Int{
    let sortedArray = array.sorted()
    if sortedArray != []{
        var check = 0
        for index in 0...sortedArray.count - 1{
            check = check + 1
            if check < sortedArray.count{
                if sortedArray[index] + 1 != sortedArray[check]{
                    return sortedArray[index] + 1
                }
            }
        }
        return sortedArray[check - 1] + 1
    }
    return 1
}


