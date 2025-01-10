//
// 344. Reverse String
// Solution Time complexity: O(n) ; Space Complexity: O(1)
//
//
//  Created by Mario Rodrigues on 10/01/25.
//

func reverseString(_ s: inout [Character]) {
    var minIndex = 0
    var maxIndex = s.count - 1
    while maxIndex > minIndex {
        let tempChar = s[minIndex]
        s[minIndex] = s[maxIndex]
        s[maxIndex] = tempChar
        minIndex += 1
        maxIndex -= 1
    }
}
