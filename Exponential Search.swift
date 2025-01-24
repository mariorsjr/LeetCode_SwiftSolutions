// Exponential Search - Time complexity: O(log n); Space Complexity: O(1)

func exponentialSearch(_ nums: [Int], _ target: Int) -> Int {
    guard !nums.isEmpty else { return -1 }
    
    if nums[0] == target {
        return 0
    }
    
    var bound = 1
    
    while bound < nums.count && nums[bound] <= target {
        bound *= 2
    }
    
    return binarySearch(nums, target, bound / 2, min(bound, nums.count - 1))
}

func binarySearch(_ nums: [Int], _ target: Int, _ left: Int, _ right: Int) -> Int {
    var left = left
    var right = right
    
    while left <= right {
        let mid = left + (right - left) / 2
        
        if nums[mid] == target {
            return mid
        } else if nums[mid] < target {
            left = mid + 1
        } else {
            right = mid - 1
        }
    }
    return -1
}

let array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
let target = 7
let result = exponentialSearch(array, target)
print(result)
