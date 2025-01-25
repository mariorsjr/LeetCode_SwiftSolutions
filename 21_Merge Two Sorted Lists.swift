// 21. Merge Two Sorted Lists
// Solution Time complexity: O(n+m); Space Complexity: O(1)

func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
    guard list1 != nil, list2 != nil else {
        return list1 ?? list2
    }

    var l1 = list1
    var l2 = list2
    var nodeToReturn = ListNode()
    var currentNode: ListNode?
    currentNode = nodeToReturn

    while let l1val = l1?.val, let l2val = l2?.val {
        if l1val <= l2val {
            currentNode?.next = l1
            l1 = l1?.next
        } else {
            currentNode?.next = l2
            l2 = l2?.next
        }
        currentNode = currentNode?.next
    }

    currentNode?.next = l1 ?? l2
    return nodeToReturn.next
}
