//
//  No.153_Find Minimum in Rotated Sorted Array.swift
//  
//
//  Created by Mason on 2022/3/15.
//

import Foundation

class Solution {
    func findMin(_ nums: [Int]) -> Int {
    
        var left: Int = 0
        var right: Int = nums.count - 1
        var mid: Int = nums.count / 2
        
        // special case
        if nums.count == 1 { return nums[0] }
        
        // use binarary search
        // there are three case
        // case1: small...medium...large
        // case2: medium...large...small
        // case3: large...small...medium
        // the minimum case will between large...medium or small...medium
        while left < right {
            // in the large...medium range
            if nums[mid] > nums[right] {
                left = mid + 1
            } else {
                // in the small...medium
                right = mid
            }
            mid = (left + right) / 2
        }
        
        return nums[left]
    }
}
