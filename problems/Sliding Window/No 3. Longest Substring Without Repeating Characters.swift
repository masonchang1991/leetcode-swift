class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var maxLength = 0
        var startIndex = 0
        var charMap: [Character: Int] = [:]
        let charArray = Array(s)
        
        for (index, c) in charArray.enumerated() {
            var endIndex = index
            if let appearCount = charMap[c] {
                charMap[c] = appearCount + 1
                // if charMap contain more than 1, remove it,
                // and move startIndex to right until charMap contain only 1 char
                while (charMap[c] ?? 1) != 1 {
                    if var count = charMap[charArray[startIndex]] {
                        count -= 1
                        charMap[charArray[startIndex]] = count
                        startIndex += 1
                    }
                }
                if maxLength < endIndex - startIndex + 1 {
                    maxLength = endIndex - startIndex + 1
                }
            } else {
                // not appear, continue
                charMap[c] = 1
                if maxLength < endIndex - startIndex + 1 {
                    maxLength = endIndex - startIndex + 1
                }
            }
        }
        
        return maxLength
    }
}
