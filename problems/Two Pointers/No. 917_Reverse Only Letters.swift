//
//  No. 917_Reverse Only Letters.swift
//  
//
//  Created by Mason on 2022/3/20.
//

import Foundation

class Solution {
    func reverseOnlyLetters(_ s: String) -> String {
        var reversedLetters: [Character] = []
        var charactersPositions: [(Character, Int)] = []
        let characters = Array(s)
        
        // reverse letter position and record the nonLetter position
        for (index, c) in characters.enumerated() {
            if c.isLetter {
                reversedLetters.insert(c, at: 0)
            } else {
                charactersPositions.append((c, index))
            }
        }
        
        // put nonLetter to original position
        for (c, index) in charactersPositions {
            reversedLetters.insert(c, at: index)
        }
        
        return String(reversedLetters)
    }
}
