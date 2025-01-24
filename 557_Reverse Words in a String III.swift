// 557. Reverse Words in a String III
// Solution Time complexity: O(n) ; Space Complexity: O(n)

func reverseWords(_ s: String) -> String {
    var reversedWords = [Character]()
    let splitedString = s.split(separator: " ")
    splitedString.forEach { substring in
        reversedWords.append(contentsOf: substring.reversed())
        reversedWords.append(" ")
    }
    reversedWords.removeLast()
    return String(reversedWords)
}