//
//  No.20_Valid Parentheses.swift
//  
//
//  Created by Mason on 2022/2/18.
//

import Foundation

class Solution {
    func isValid(_ s: String) -> Bool {
        
        // Put close brackets which haven't combine with open brackets
        // first element is the first have to combine with open bracket
        var waitingList: [String.Element] = []
        
        for char in Array(s) {
            switch char {
            case "(", "{", "[":
                waitingList.insert(getCorrespondingChar(by: char), at: 0)
            case ")", "}", "]":
                // that means there is no open bracket in front of this close bracket
                if waitingList.count == 0 || char != waitingList.removeFirst() {
                    return false
                } else {
                    // correct! continueßß
                }
            default: return false
            }
        }
        if waitingList.count != 0 {
            return false
        } else {
            return true
        }
    }
    
    func getCorrespondingChar(by char: String.Element) -> String.Element {
        switch char {
            case "(": return ")"
            case "{": return "}"
            case "[": return "]"
            default: fatalError()
        }
    }
}
