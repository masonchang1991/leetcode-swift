//
//  No.9_Palindrome Number.swift
//  
//
//  Created by Mason on 2021/12/26.
//

import Foundation


/***
 Given an integer x, return true if x is palindrome integer.
 An integer is a palindrome when it reads the same backward as forward.
 For example, 121 is a palindrome while 123 is not.
*/

/*
Example 1:

Input: x = 121
Output: true
Explanation: 121 reads as 121 from left to right and from right to left.
Example 2:

Input: x = -121
Output: false
Explanation: From left to right, it reads -121. From right to left, it becomes 121-. Therefore it is not a palindrome.
Example 3:

Input: x = 10
Output: false
Explanation: Reads 01 from right to left. Therefore it is not a palindrome.
 

Constraints:

-231 <= x <= 231 - 1
 

Follow up: Could you solve it without converting the integer to a string?
*/


// My Solution
class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        
        var numberArray: [Int] = []
        
        if x < 0 {
            return false
        } else {
            var num = x
            
            while num > 0 {
                var remainder = num % 10
                num = num / 10
                numberArray.append(remainder)
            }
            
            var checkCount = 0
            // if odd, we should check count is (numberArray.count - 1)/2
            if numberArray.count % 2 > 0 {
                checkCount = (numberArray.count - 1)/2
            } else {
                // even
                checkCount = (numberArray.count)/2
            }
            
            for i in 0..<checkCount {
                // if find any is wrong, return false
                if numberArray[i] != numberArray[numberArray.count - 1 - i] {
                    return false
                }
            }
            
            return true
        }
    }
}
