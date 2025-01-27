// 125. Valid Palindrome
// Solution Time complexity: O(n); Space Complexity: O(1)

func isPalindrome(_ s: String) -> Bool {
    let str = s.filter {$0.isLetter || $0.isNumber}.lowercased()
    let charArray = Array(str)
    var left = 0
    var right = charArray.count - 1
    
    while left < right {
        if charArray[left] != charArray[right] {
            return false
        }
        left += 1
        right -= 1
    }
    
    return true
}
