// 26. Remove Duplicates from Sorted Array
// Solution Time complexity: O(n); Space Complexity: O(1)

func removeDuplicates(_ nums: inout [Int]) -> Int {
    var equals = 1
    var current = 1
    var writer = 1
    
    while current < nums.count {
        equals = nums[current] == nums[current - 1] ? equals + 1 : 1
        
        if equals == 1 {
            nums[writer] = nums[current]
            writer += 1
        }
        current += 1
    }
    
    return writer
}
