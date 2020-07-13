import UIKit

//func smart119TestRecursive(_ n: Int) -> Int {
//    if n < 0 {
//        return n
//    } else if n == 0 {
//        return 0
//    } else if n == 1 {
//        return 1
//    }
//    return smart119TestRecursive(n - 1) + smart119TestRecursive(n - 2)
//}
//print(smart119TestRecursive(-10))

func smart119TestIterative(_ n: Int) -> Int {
    let start = CFAbsoluteTimeGetCurrent()
    if n < 0 {
        return n
    }
    var fn = 1
    var fn2 = 1
    for _ in 2 ..< n {
        (fn,fn2) = (fn &+ fn2, fn)
    }
    let diff = CFAbsoluteTimeGetCurrent() - start
    print("Took \(diff) seconds")
    return fn
}

print(smart119TestIterative(8181))

func smart119TestCache(_ n: Int) -> Int {
    let start = CFAbsoluteTimeGetCurrent()
    if n < 0 {
        return n
    }
    var cache = Array(repeating: 0, count: n)
    cache[0] = 0
    cache[1] = 1
    for i in 2 ..< n {
        cache[i] = cache[i - 1] &+ cache[i - 2]
    }
    let diff = CFAbsoluteTimeGetCurrent() - start
    print("Took \(diff) seconds")
    return cache[n - 1] &+ cache[n - 2]
}

print(smart119TestCache(8181))
