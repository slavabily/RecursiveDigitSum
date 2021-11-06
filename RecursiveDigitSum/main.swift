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
     
    return 0
}

print(superDigit(n: "9875", k: 4))

