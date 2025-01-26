// 80. Remove Duplicates from Sorted Array II
// Solution Time complexity: O(n); Space Complexity: O(1)

func removeDuplicates(_ nums: inout [Int]) -> Int {
    var current = 1
    var writer = 1
    var equals = 1
    
    while current < nums.count {
        if nums[current] == nums[current - 1] {
            equals += 1
        } else {
            equals = 1
        }
        
        if equals <= 2 {
            nums[writer] = nums[current]
            writer += 1
        }
        current += 1
    }
    return writer
}
