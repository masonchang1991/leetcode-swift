//
//  No. 98_Validate Binary Search Tree.swift
//  
//
//  Created by Mason on 2022/3/20.
//

import Foundation

/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    func isValidBST(_ root: TreeNode?) -> Bool {
        // root doesn't have the upper and lower bound
        return isValid(root, min: Int.min, max: Int.max)
    }
    
    // check every node
    // if it is the left node, we constrint its upper bound. (because left should be the lowest in the search path)
    // if it is the right node, we constrint its lower bound. (because right should be the highest in the search path)
    func isValid(_ root: TreeNode?, min: Int, max: Int) -> Bool {
        guard let root = root else { return true }
        if root.val <= min || root.val >= max { return false }
        return isValid(root.left, min: min, max: root.val) && isValid(root.right, min: root.val, max: max)
    }
}
