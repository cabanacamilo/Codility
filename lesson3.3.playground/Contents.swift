import UIKit

//////////////////////////////////////////////lesson 3.3

public func TapeEquilibrium(array: [Int])-> Int{
    let total = array.reduce(0, +)
    var sum = 0
    var rest = 0
    var newArray: [Int] = []
    for index in 0...array.count - 1{
        sum = sum + array[index]
        rest = total - sum
        if rest != 0{
            newArray.append(abs(rest - sum))
        }
    }
    return newArray.min()!
}
