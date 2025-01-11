// 1929. Concatenation of Array
// Solution Time complexity: O(n) ; Space Complexity: O(n)

func getConcatenation(_ nums: [Int]) -> [Int] {
    let length = nums.count
    var ans: [Int] = Array(repeating: 0, count: 2*length)
    
    for i in 0 ..< nums.count {
        ans[i] = nums[i]
        ans[i+length] = nums[i]
    }
    
    return ans
}
