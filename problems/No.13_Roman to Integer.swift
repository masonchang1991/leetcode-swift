//
//  No.13_Roman to Integer.swift
//  
//
//  Created by Mason on 2022/2/13.
//

class Solution {
    func romanToInt(_ s: String) -> Int {
        // Step1: Change Roman Characters to Integer
        // Step2: Reverse Integer Array
        // Step3: If previous value is higher than current value, change to minus sign
        // Step4: reduce this array
        // ==================================
        
        // Step1 + Step2
        let romanCharacters = Array(s)
        let numberArray: [Int] = romanCharacters.map { value in
            Solution.getRomanIntegerBy(char: value)
        }.reversed()
        
        // Step 3
        var previousValue: Int? = nil
        let numberArrayWithSign: [Int] = numberArray.map { value in
            if let preValue = previousValue, preValue > value {
                previousValue = value
                return -value
            } else {
                previousValue = value
                return value
            }
        }
        
        // Step 4
        let sum: Int = numberArrayWithSign.reduce(0, {$0 + $1})
        
        return sum
    }
    
    static func getRomanIntegerBy(char: String.Element) -> Int {
        switch char {
            case "I": return 1
            case "V": return 5
            case "X": return 10
            case "L": return 50
            case "C": return 100
            case "D": return 500
            case "M": return 1000
            default: fatalError()
        }
    }
}
