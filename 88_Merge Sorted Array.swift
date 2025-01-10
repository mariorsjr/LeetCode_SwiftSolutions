// 88. Merge Sorted Array
// Solution Time complexity: O((m+n)log(m+n)) ; Space Complexity: O(1)

func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    nums1.removeLast(n)
    nums1.append(contentsOf: nums2)
    nums1.sort()
}
