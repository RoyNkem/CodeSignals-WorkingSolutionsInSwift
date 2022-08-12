/*
 Given an array of strings, return another array containing all of its longest strings.

 Example:
 For inputArray = ["aba", "aa", "ad", "vcd", "aba"], the output should be allLongestStrings(inputArray) = ["aba", "vcd", "aba"].
 */

func solution(inputArray: [String]) -> [String] {
    var arr = [String]()
    
    var maxChar = inputArray.max{$0.count < $1.count}?.count

    for i in inputArray {
        if i.count == maxChar {
            arr.append(i)
        }
    }
    return arr
}

//Test
let str = ["enyky",
           "benyky",
           "zq",
           "varennyky"]
solution(inputArray: str)
