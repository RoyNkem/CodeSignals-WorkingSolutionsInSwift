/*
 Given two strings, find the number of common characters between them.

 Example:
 For s1 = "aabcc" and s2 = "adcaa", the output should be commonCharacterCount(s1, s2) = 3.
 Strings have 3 common characters - 2 "a"s and 1 "c".
 */

//func solution1(s1: String, s2: String) -> Int {
//
//    var s2 = s2
//
//    var commons = 0
//
//    for c in s1.characters {
//        if s2.characters.contains(c) {
//            let index = s2.characters.indexOf(c)
//            commons += 1
//            s2.removeAtIndex(index!)
//        }
//    }
//
//    return commons
//}

//OR

func solution(s1: String, s2: String) -> Int {
    var lettersAndCount = [Character: Int]()
    for letter in s1 {
        if lettersAndCount[letter] != nil {
            lettersAndCount[letter]! += 1
        } else {
            lettersAndCount[letter] = 1
        }
    }
    var result = 0
    for letter in s2  {
        guard let count = lettersAndCount[letter], count != 0 else { continue }
        lettersAndCount[letter]! -= 1
        result += 1
   }
    
    return result
}

//OR

func solution2(s1: String, s2: String) -> Int {
    var count = 0
    var characters = Array(s2)
    
    for char in s1 {
        for char2 in 0..<characters.count {
            if char == characters[char2] {
                count += 1
                characters.remove(at: char2)
                break
                 
                
            }
        }
    }
    
    return count
}

let s1 = "aabcc"
let s2 = "adcaa"

solution(s1: s1, s2: s2)
solution2(s1: s1, s2: s2)
