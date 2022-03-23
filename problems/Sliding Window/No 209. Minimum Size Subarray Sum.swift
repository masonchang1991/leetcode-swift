class Solution {
    func minSubArrayLen(_ target: Int, _ nums: [Int]) -> Int {
        var minLength: Int = Int.max
        var sum: Int = 0
        var startIndex = 0
        var endIndex = 0
        
        // Use Sliding Window method
        for (index, num) in nums.enumerated() {
            sum += num
            endIndex = index
            
            // if larger than target, move startIndex to right
            while sum >= target {
                minLength = min(minLength, (endIndex - startIndex + 1))
                sum -= nums[startIndex]
                startIndex += 1
            }
        }
        
        return minLength == Int.max ? 0: minLength
    }
}
