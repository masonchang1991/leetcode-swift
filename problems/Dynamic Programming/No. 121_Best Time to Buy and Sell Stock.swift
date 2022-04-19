//
//  No. 121_Best Time to Buy and Sell Stock.swift
//  
//
//  Created by Mason on 2022/4/19.
//

import Foundation

class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var minInt = prices[0]
        var maxInt = 0
        prices.forEach { price in
            minInt = min(minInt, price)
            maxInt = max(maxInt, price - minInt)
        }
        return maxInt
    }
}
