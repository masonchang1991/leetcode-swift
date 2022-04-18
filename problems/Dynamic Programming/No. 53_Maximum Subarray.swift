//
//  No. 53_Maximum Subarray.swift
//  
//
//  Created by Mason on 2022/4/18.
//

import Foundation

class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var maxSum = nums[0]
        var preSum = nums[0]
        for i in 1..<nums.count {
            let current = preSum + nums[i] < nums[i] ? nums[i]:preSum + nums[i]
            maxSum = max(maxSum, current)
            preSum = current
        }
        
        
        return maxSum
    }
}
