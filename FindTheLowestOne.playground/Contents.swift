import UIKit

/////////////////////////////////FIND THE LOWEST ONE

public func solution(_ A: [Int]) -> Int{
    let newArray = Set(A)
    let orderArray = Array(newArray).sorted()
    var array: [Int] = []
    for i in orderArray.indices {
        if orderArray[i] > -1 {
            array.append(orderArray[i])
        }
    }
    if array.contains(1){
        var firstElement = array[0]
        for i in array.indices {
            if firstElement != array[i]{
                break
            }
            firstElement = firstElement + 1
        }
        return firstElement
    }
    return 1
}

print(solution([2,2,10,0,1]))
