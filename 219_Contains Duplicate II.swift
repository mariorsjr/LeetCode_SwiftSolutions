// 219. Contains Duplicate II
// Solution Time complexity: O(n); Space Complexity: O(n)

func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
    var numbersDict = [Int: Int]()
    
    for (index, n) in nums.enumerated() {
        if numbersDict[n] == nil {
            numbersDict[n] = index
        } else if let mostRecentNumberIndex = numbersDict[n] {
            if index - mostRecentNumberIndex <= k {
                return true
            } else {
                numbersDict[n] = index
            }
        }
    }
    return false
}
