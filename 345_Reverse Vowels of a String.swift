// 345. Reverse Vowels of a String
// Solution Time complexity: O(n) ; Space Complexity: O(n)

let vowels = ["a", "e", "i", "o", "u"]

func reverseVowels(_ s: String) -> String {
    var stringArray = Array(s)
    var minIndex = 0
    var maxIndex = stringArray.count - 1
    
    while maxIndex > minIndex {
        if isVowel(stringArray[minIndex]), isVowel(stringArray[maxIndex]) {
            stringArray.swapAt(minIndex, maxIndex)
            minIndex += 1
            maxIndex -= 1
        }
        if !isVowel(stringArray[minIndex]) {
            minIndex += 1
        }
        if !isVowel(stringArray[maxIndex]) {
            maxIndex -= 1
        }
    }
    return String(stringArray)
}

func isVowel(_ c: Character) -> Bool {
    return vowels.contains(c.lowercased())
}
