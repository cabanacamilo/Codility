import UIKit

///////////////////////////////////////////////////////////////lesson 2.1 codify

func duplicateElements(array: [Int]) -> Set<Int> {
    let sortedArray = array.sorted()
    var duplicates: [Int] = []
    var check = 1
    for i in 0...sortedArray.count{
        if check < sortedArray.count{
            if sortedArray[i] == sortedArray[check]{
                duplicates.append(sortedArray[i])
            }
        }
        check = check + 1
    }
//    let duplicates = Set(array.filter({ (i: Int) in array.filter({ $0 == i }).count > 1}))
    return Set<Int>(duplicates)
}

public func OddOccurrences(array : [Int])-> Int {
    let newSet = Set(array)
    let duplicate = duplicateElements(array: array)
    let nonDuplicates = newSet.subtracting(duplicate)
    return nonDuplicates.max()!
}
