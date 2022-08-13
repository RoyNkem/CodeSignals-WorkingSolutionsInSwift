/*
 Given the string, check if it is a palindrome.

 Example:
 - For inputString = "aabaa", the output should be checkPalindrome(inputString) = true;
 - For inputString = "abac", the output should be checkPalindrome(inputString) = false;
 - For inputString = "a", the output should be checkPalindrome(inputString) = true.
 */

func checkPalindrome(text: String) -> Bool {
    /*
     => filter all non-letters like spaces and punctuations
     => convert all string characters to lowercase
     => use "two pointer" algorithm by starting from the two extreme opposite ends (lhs & rhs) of the given text and comparing their values until we arrive at the midpoint of the text
     */
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
let text = "halah"
checkPalindrome(text: text)
