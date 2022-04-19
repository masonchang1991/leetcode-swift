//
//  No. 303_Range Sum Query.swift
//  
//
//  Created by Mason on 2022/4/19.
//


class NumArray {

    var nums: [Int]
    // store range(0...i)'s sum
    // we can get range(i...j)'s sum by range(0...j) - range(0...i - 1), is must greater than 0
    var rangeSum: [Int: Int] = [:]
    
    init(_ nums: [Int]) {
        self.nums = nums
        var sum = 0
        var index = 0
        nums.forEach { num in
            sum += num
            rangeSum[index] = sum
            index += 1
        }
    }
    
    func sumRange(_ left: Int, _ right: Int) -> Int {
        if left == 0 {
            return rangeSum[right]!
        } else {
            return rangeSum[right]! - rangeSum[left - 1]!
        }
    }
}

/**
 * Your NumArray object will be instantiated and called as such:
 * let obj = NumArray(nums)
 * let ret_1: Int = obj.sumRange(left, right)
 */
