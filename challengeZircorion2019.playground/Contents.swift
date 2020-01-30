import UIKit

///////////////challenge zircorion 2019

public func zirconion2019(frontend: [Int], backend: [Int], developers: Int)-> Int{
    
    let developersInA = developers
    let developersInB = abs(developers - backend.count)
    var newTeamA:[Int] = []
    var newTeamB:[Int] = []
    var addFromStart = 0
    var addFromEnd = backend.count - 1
    for i in 0...developersInA - 1{
        if i % 2 == 0{
            newTeamA.append(frontend[addFromStart])
            addFromStart = addFromStart + 1
        }
        else{
            newTeamA.append(frontend[addFromEnd])
            addFromEnd = addFromEnd - 1
        }
    }
    for i in 0...developersInB - 1{
        if i % 2 == 0{
            newTeamB.append(backend[addFromStart])
            addFromStart = addFromStart + 1
        }
        else{
            newTeamB.append(backend[addFromEnd])
            addFromEnd = addFromEnd - 1
        }
    }
    let sumOfA = newTeamA.reduce(0, { x, y in
        x + y
    })
    let sumOfB = newTeamB.reduce(0, { x, y in
        x + y
    })
    return sumOfA + sumOfB
}


