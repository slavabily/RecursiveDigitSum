//
//  main.swift
//  RecursiveDigitSum
//
//  Created by slava bily on 05.11.2021.
//

import Foundation

func superDigit(n: String, k: Int) -> Int {
    var p = String()
    for _ in 0..<k {
        p = p + n
    }
    print(p)
    let arrS = Array(p)
    print(arrS)
    
    func ciclicSum(of digit: [Character]) -> Int {
        var sum = 0
        for i in 0..<arrS.count {
            let c = Int(String(arrS[i]))
            sum = sum + c!
        }
        print(sum)
        return sum
    }
    
    var s = Array(String(ciclicSum(of: arrS)))
    print(s)
    while s.count > 1 {
        s = Array(String(ciclicSum(of: s)))
    }
    return Int(String(s))!
}

print(superDigit(n: "9875", k: 4))

