//
//  main.swift
//  TableGenerator
//
//  Created by AdnanZahid on 4/8/18.
//  Copyright © 2018 TableGenerator. All rights reserved.
//

import Foundation

var total = 0
var correct = 0
var wrong = 0

while true {
    let aLowerLimit = 2
    let aUpperLimit = 9
    let aDifference = UInt32(aUpperLimit + 1 - aLowerLimit)
    
    let bLowerLimit = 11
    let bUpperLimit = 100
    let bDifference = UInt32(bUpperLimit + 1 - bLowerLimit)
    
    let a = aLowerLimit + Int(arc4random_uniform(aDifference))
    let b = bLowerLimit + Int(arc4random_uniform(bDifference))
    let c = a * b
    print("\(a) x \(b) = ", separator: "", terminator: "")
    let answer = readLine(strippingNewline: true)
    
    if answer == "q" {
        print("Correct: \(correct)/\(total)")
        print("Wrong: \(wrong)/\(total)")
        break
    } else if Int(answer ?? "") == c {
        print("Correct!")
        correct += 1
    } else {
        print("Wrong! Correct answer is \(c)")
        wrong += 1
    }
    
    total += 1
}
