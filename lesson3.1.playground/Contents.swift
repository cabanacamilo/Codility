import UIKit

////////////////////////////////////lesson 3.1

public func FrogJmp(x: Int, y: Int, d: Int)-> Int{
    let distance = y - x
    var jumps = distance / d
    if distance % d != 0{
        jumps = jumps + 1
    }
    return jumps
}
