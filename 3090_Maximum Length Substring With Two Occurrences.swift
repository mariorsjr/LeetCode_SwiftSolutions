// 3090. Maximum Length Substring With Two Occurrences
// Solution Time complexity: O(n); Space Complexity: O(k) k = unique chars

func maximumLengthSubstring(_ s: String) -> Int {
    var maxLength = 1
    var leftIndex = s.startIndex
    var rightIndex = s.startIndex
    var dictionary = [Character:Int]()
    
    dictionary[s[leftIndex]] = 1
    
    while rightIndex < s.index(before: s.endIndex) {
        rightIndex = s.index(after: rightIndex)
        
        if let letterCount = dictionary[s[rightIndex]] {
            dictionary[s[rightIndex]] = letterCount + 1
        } else {
            dictionary[s[rightIndex]] = 1
        }
        
        while let letterCount = dictionary[s[rightIndex]], letterCount > 2 {
            if let count = dictionary[s[leftIndex]] {
                dictionary[s[leftIndex]] = count - 1
                leftIndex = s.index(after: leftIndex)
            }
        }
        maxLength = max(maxLength, s[leftIndex...rightIndex].count)
    }
    return maxLength
}
