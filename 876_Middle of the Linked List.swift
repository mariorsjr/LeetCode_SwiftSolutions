// 876. Middle of the Linked List
// Solution Time complexity: O(n); Space Complexity: O(1)

func middleNode(_ head: ListNode?) -> ListNode? {
    var tortoise = head
    var hare = head
    while hare?.next != nil {
        hare = hare?.next?.next
        tortoise = tortoise?.next
    }
    return tortoise
}
