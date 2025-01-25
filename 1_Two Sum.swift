// 1. Two Sum
// Solution Time complexity: O(n); Space Complexity: O(n)

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var complementWithIndex = [Int:Int]()
    for (index,num) in nums.enumerated() {
        let complement = target - num
        if let complementIndex = complementWithIndex[complement] {
            return [complementIndex, index]
        } else {
            complementWithIndex[num] = index
        }
    }
    return []
}
