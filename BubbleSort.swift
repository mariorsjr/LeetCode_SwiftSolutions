// Bubble Sort Swift
// Solution Time complexity: O(n^2); Space Complexity: O(1)

//func bubbleSort(arrayToBeSorted: inout [Int]) {
//    for i in 0 ..< arrayToBeSorted.count {
//        for j in i ..< arrayToBeSorted.count {
//            if arrayToBeSorted[i] > arrayToBeSorted[j] {
//                let temp = arrayToBeSorted[i]
//                arrayToBeSorted[i] = arrayToBeSorted[j]
//                arrayToBeSorted[j] = temp
//            }
//        }
//    }
//}

func bubbleSort(arrayToBeSorted: inout [Int]) {
    for _ in arrayToBeSorted {
        print(arrayToBeSorted)
        var isSorted = true
        for i in 0 ..< arrayToBeSorted.count - 1 {
            if arrayToBeSorted[i] > arrayToBeSorted[i+1] { // change to < will make decreasing order
                isSorted = false
                let temp = arrayToBeSorted[i]
                arrayToBeSorted[i] = arrayToBeSorted[i+1]
                arrayToBeSorted[i+1] = temp
            }
        }
        if isSorted {
            return
        }
    }
}
