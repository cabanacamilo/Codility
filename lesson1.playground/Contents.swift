import UIKit

//////////////////////////////////lesson 1 codify


func binaryGap(_number: Int)-> Int{
    let binaryNumber = String(_number, radix: 2, uppercase: true)
    var newElement = 0
    var finalElement = 0
    for element in binaryNumber{
        if element != "1" {
            newElement = newElement + 1
        } else {
            if newElement > finalElement {
                finalElement = newElement
            }
            newElement = 0
        }
    }
    return finalElement
}

print(binaryGap(_number: 561892))

