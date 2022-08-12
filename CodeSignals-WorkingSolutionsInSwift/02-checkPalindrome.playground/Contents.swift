/*
 Given the string, check if it is a palindrome.

 Example:
 - For inputString = "aabaa", the output should be checkPalindrome(inputString) = true;
 - For inputString = "abac", the output should be checkPalindrome(inputString) = false;
 - For inputString = "a", the output should be checkPalindrome(inputString) = true.
 */

func checkPalindrome(text: String) -> Bool {
    let text = text.filter{$0.isLetter}
    guard text.count > 1 else { return true }
    
    let chars = Array(text.lowercased())
    
    var leftIndex = 0
    var rightIndex = chars.count - 1
    
    while leftIndex < rightIndex {
        if chars[leftIndex] != chars[rightIndex] {
            return false
        }
        leftIndex += 1
        rightIndex -= 1
    }
    
    return true
}

//Test
let text = "aroma, amora"
checkPalindrome(text: text)
