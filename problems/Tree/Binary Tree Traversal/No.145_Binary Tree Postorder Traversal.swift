//
//  No.145_Binary Tree Postorder Traversal.swift
//  
//
//  Created by Mason on 2022/3/4.
//

/*
 Problem Link: https://leetcode.com/problems/binary-tree-postorder-traversal/
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
    func postorderTraversal(_ root: TreeNode?) -> [Int] {
        var result: [Int] = []
        if let root = root {
            // postorder means you have to do L(leftchild)R(rightchild)V(visiting)
            // you can pick up from https://www.geeksforgeeks.org/tree-traversals-inorder-preorder-and-postorder/
            result.append(contentsOf: postorderTraversal(root.left))
            result.append(contentsOf: postorderTraversal(root.right))
            result.append(root.val)
            return result
        } else {
            return []
        }
    }
}
