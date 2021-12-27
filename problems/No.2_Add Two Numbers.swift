//
//  No.2_Add Two Numbers.swift
//  
//
//  Created by Mason on 2021/12/28.
//

import Foundation

// link: https://leetcode.com/problems/add-two-numbers/
/**
You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order, and each of their nodes contains a single digit. Add the two numbers and return the sum as a linked list.

You may assume the two numbers do not contain any leading zero, except the number 0 itself.
 */

/*
Example 1:


Input: l1 = [2,4,3], l2 = [5,6,4]
Output: [7,0,8]
Explanation: 342 + 465 = 807.
 
Example 2:

Input: l1 = [0], l2 = [0]
Output: [0]
 
Example 3:

Input: l1 = [9,9,9,9,9,9,9], l2 = [9,9,9,9]
Output: [8,9,9,9,0,0,0,1]
 
Constraints:

The number of nodes in each linked list is in the range [1, 100].
0 <= Node.val <= 9
It is guaranteed that the list represents a number that does not have leading zeros.
 */

// My solution

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */


class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var currentL1: ListNode? = l1
        var currentL2: ListNode? = l2
        var rootListNode: ListNode?
        var lastNode: ListNode?
        
        while currentL1 != nil || currentL2 != nil {
            
            if rootListNode == nil {
                var newNode = createNewNodeWith(val1: currentL1?.val, val2: currentL2?.val)
                rootListNode = newNode
                lastNode = newNode
            } else {
                // if the next exists, the new node should be add 1
                if lastNode?.next == nil {
                    var newNode = createNewNodeWith(val1: currentL1?.val, val2: currentL2?.val)
                    lastNode?.next = newNode
                    lastNode = newNode
                } else {
                    // modify current node
                    var newNode = createNewNodeWith(val1: (currentL1?.val ?? 0) + 1, val2: currentL2?.val)
                    lastNode?.next = newNode
                    lastNode = newNode
                }
            }
            
            currentL1 = currentL1?.next
            currentL2 = currentL2?.next
        }
        
        return rootListNode
    }
    
    // create new node with sum of two numbers
    // if sum greater than 10, add a node at the newNode.nextß
    func createNewNodeWith(val1: Int?, val2: Int?) -> ListNode? {
        var newNode: ListNode? = ListNode((val1 ?? 0) + (val2 ?? 0))
        if (newNode?.val ?? 0) >= 10 {
            newNode?.next = ListNode(1)
            newNode?.val -= 10
        }
        return newNode
    }
}
