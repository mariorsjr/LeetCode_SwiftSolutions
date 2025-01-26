// 26. Remove Duplicates from Sorted Array
// Solution Time complexity: O(n); Space Complexity: O(1)

func removeDuplicates(_ nums: inout [Int]) -> Int {
    var left = 0
    var right = 1
    var k = 1
    
    while right < nums.count {
        if nums[right] > nums[left] {
            left += 1
            k += 1
            nums[left] = nums[right]
        }
        right += 1
    }
    
    return k
}
