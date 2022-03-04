//
//  No.429_N-ary Tree Level Order Traversal.swift
//  
//
//  Created by Mason on 2022/3/4.
//

/*
 problem link: https://leetcode.com/problems/n-ary-tree-level-order-traversal/
 */

/**
 * Definition for a Node.
 * public class Node {
 *     public var val: Int
 *     public var children: [Node]
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.children = []
 *     }
 * }
 */

class Solution {
    func levelOrder(_ root: Node?) -> [[Int]] {
        
        // put next level node in this queue
        var nodeQueue: [Node] = []
        var result: [[Int]] = []
        if let root = root {
            // first node is root
            nodeQueue.append(root)
            while nodeQueue.count != 0 {
                var currentLevelNodeVals: [Int] = []
                // traversal current level node queue
                for _ in 0..<nodeQueue.count {
                    let dequeueNode = nodeQueue.removeFirst()
                    currentLevelNodeVals.append(dequeueNode.val)
                    // append second round node into the queue
                    nodeQueue.append(contentsOf: dequeueNode.children)
                }
                result.append(currentLevelNodeVals)
            }
            return result
        } else {
            return []
        }
    }
}
