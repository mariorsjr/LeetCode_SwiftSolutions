// 206. Reverse Linked List
// Solution Time complexity: O(n); Space Complexity: O(1)

func reverseList(_ head: ListNode?) -> ListNode? {
    guard head != nil else { return nil }
    var head = head
    
    var newListNode: ListNode? = nil
    while head != nil {
        let next = head?.next
        head?.next = newListNode
        newListNode = head
        head = next
    }
    return newListNode
}
