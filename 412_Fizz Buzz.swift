// 412. Fizz Buzz
// Solution Time complexity: O(n); Space Complexity: O(n)

func fizzBuzz(_ n: Int) -> [String] {
    var resultString = [String]()
    for i in 1...n {
        switch (i.isMultiple(of: 3), i.isMultiple(of: 5)) {
        case (true, true):
            resultString.append("FizzBuzz")
        case (true, false):
            resultString.append("Fizz")
        case (false, true):
            resultString.append("Buzz")
        default:
            resultString.append("\(i)")
        }
    }
    return resultString
}
