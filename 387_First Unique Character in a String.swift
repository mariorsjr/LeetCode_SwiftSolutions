// 387. First Unique Character in a String
// Solution Time complexity: O(n); Space Complexity: O(n)

func firstUniqChar(_ s: String) -> Int {
    var lettersCount = [Character: Int]()
    
    for letter in s {
        lettersCount[letter, default: 0] += 1
    }
    
    for (index, letter) in s.enumerated() {
        if lettersCount[letter] == 1 {
            return index
        }
    }
    
    return -1
}
