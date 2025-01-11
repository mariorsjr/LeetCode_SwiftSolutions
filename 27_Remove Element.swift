// 27. Remove Element
// Solution Time complexity: O(n) ; Space Complexity: O(1)

func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
    // Time O(n) Space O(1)
    var index = 0
    var equalToVal = 0
    
    while index < nums.count - equalToVal {
        if nums[index] == val {
            nums.swapAt(index, nums.count - 1 - equalToVal)
            equalToVal += 1
        } else {
            index += 1
        }
    }
    return nums.count - equalToVal
    
    //swifty way - Not great, time O(n) but space O(n)
    // nums.removeAll { $0 == val }
    // return nums.count
}
