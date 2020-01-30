import UIKit

///////////////////////lesson 2.2

public func CyclicRotation(input: [Int], k: Int)-> [Int]{
    var newArray = input
    for (i,element) in input.enumerated(){
        let newIndex = (i + k) % input.count
        newArray[newIndex] = element
    }
    return newArray
}
