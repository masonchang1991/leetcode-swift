//
//  No.144_Binary Tree Preorder Traversal.swift
//  
//
//  Created by Mason on 2022/3/4.
//

/*
 Problem Link: https://leetcode.com/problems/binary-tree-preorder-traversal/
 */

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
    // Preorder means you have to do V(visiting)L(leftchild)R(rightchild)
    // you can pick up from https://www.geeksforgeeks.org/tree-traversals-inorder-preorder-and-postorder/
    func preorderTraversal(_ root: TreeNode?) -> [Int] {
        var result: [Int] = []
        if let root = root {
            result.append(root.val)
            result.append(contentsOf: preorderTraversal(root.left))
            result.append(contentsOf: preorderTraversal(root.right))
            return result
        } else {
            return []
        }
    }
}
