// Binary Search Swift - Time complexity: O(log n) ; Space Complexity: O(1)
// returns the index of the target element, if does not contains return -1
// the array must be sorted in ascending order.
func binarySearch(_ nums: [Int], _ target: Int) -> Int {
    if nums.count <= 0 {
        return -1
    }
    
    var leftIndex = 0
    var rightIndex = nums.count - 1
    
    while leftIndex <= rightIndex {
        let midIndex = leftIndex + (rightIndex - leftIndex) / 2 // to prevent overflow
        let midValue = nums[midIndex]
        
        if midValue == target {
            return midIndex
        } else if midValue < target {
            leftIndex = midIndex + 1
        } else {
            rightIndex = midIndex - 1
        }
    }
    
    return -1
}
