//
//  No. 70_Climbing Stairs.swift
//  
//
//  Created by Mason on 2022/4/19.
//

class Solution {
    func climbStairs(_ n: Int) -> Int {
        // if n = 0, 1, 2, total steps will be 0, 1, 2
        // if n > 3, then steps will be (n-1)'steps + (n-2)'s steps
        if n <= 2 {
            return n
        } else {
            var current = 0
            var currentMinusOne = 2
            var currentMinusTwo = 1
            for _ in 3...n {
                current = currentMinusOne + currentMinusTwo
                currentMinusTwo = currentMinusOne
                currentMinusOne = current
            }
            return current
        }
    }
}
