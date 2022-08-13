/*
 Given an array of strings, return another array containing all of its longest strings.

 Example:
 For inputArray = ["aba", "aa", "ad", "vcd", "aba"], the output should be allLongestStrings(inputArray) = ["aba", "vcd", "aba"].
 */

func solution(inputArray: [String]) -> [String] {
    //initialize an empty array to hold the strings with longest characters
    var arr = [String]()
    
    //returns the count for the string with longest characters in the sequence
    let maxChar = inputArray.max{$0.count < $1.count}?.count

    //compare each element's length in array to the maxChar, and append desired elements to arr
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
