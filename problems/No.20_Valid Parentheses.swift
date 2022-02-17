//
//  No.20_Valid Parentheses.swift
//  
//
//  Created by Mason on 2022/2/18.
//

import Foundation

class Solution {
    func isValid(_ s: String) -> Bool {
        
        var charArray = Array(s)
        
        // Put close brackets which haven't combine with open brackets
        // first element is the first have to combine with open bracket
        var waitingList: [String.Element] = []
        
        for char in charArray {
            // if not, check the first element in waiting list
            if checkIsTheOpenBracket(by: char) {
                waitingList.insert(getCorrespondingChar(by: char), at: 0)
            } else {
                if waitingList.count == 0 {
                    // that means there is no open bracket in front of this close bracket
                    return false
                } else {
                    let firstElemet = waitingList.removeFirst()
                    if char == firstElemet {
                        // correct! continueß
                    } else {
                        return false
                    }
                }
            }
        }
        
        if waitingList.count == 0 {
            return true
        } else {
            return false
        }
    }
    
    func getCorrespondingChar(by char: String.Element) -> String.Element {
        switch char {
            case "(": return ")"
            case "{": return "}"
            case "[": return "]"
            default: fatalError() // not gona happen
        }
    }
    
    func checkIsTheOpenBracket(by char: String.Element) -> Bool {
        switch char {
            case "(": return true
            case "{": return true
            case "[": return true
            default: return false
        }
    }
}
