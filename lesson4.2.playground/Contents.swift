import UIKit

/////////////////////////////////////////////lesson 4.2

public func FrogRiverOne(x: Int, array: [Int])-> Int{
    var leafPosition = [Int: Int]()
    for (index, element) in array.enumerated(){
        if element <= x + 1{
            if let count = leafPosition[element]{
                print(1)
                leafPosition[element] = count + 1
            }
            else{
                print(2)
                leafPosition[element] = 1
                if leafPosition.keys.count == x{
                    return index
                }
            }
        }
    }
    return -1
}
