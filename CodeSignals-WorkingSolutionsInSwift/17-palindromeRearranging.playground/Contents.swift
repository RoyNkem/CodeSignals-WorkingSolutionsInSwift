/*
 Given a string, find out if its characters can be rearranged to form a palindrome.
 
 Example
 
 For inputString = "aabb", the output should be
 solution(inputString) = true.
 
 We can rearrange "aabb" to make "abba", which is a palindrome.
 */

func solution(inputString: String) -> Bool {
    //initialize an empty dictionary to store the chars (as keys) and their frequency/occurence (as values)
    var dict = [Character: Int]()
    
    //increase the (value) number of times each character appears by using for loop
    for i in inputString {
        dict[i] = (dict[i] ?? 0) + 1 // for i element, first loop (0 + 1 = 1), second loop (1 + 1 = 2)
    }
    /*
     => dict is a dictionary and the filter func takes in a dict of (key,value) pair.
     => $0 rep the key & $1 rep the value
     => filter out the elements that have even values and returns elements with odd values in the dict to count them
     => if there are no elements in the dict (i.e only keys that appear twice)
     */
    return dict.filter { $1 % 2 == 1 }.count <= 1
}
//OR

func solution1(inputString: String) -> Bool {
    Set(inputString).map{i in inputString.filter{$0 == i}.count%2}.reduce(0, +)<=1
}

//Test
let a = "aabbgvkuhrfvelrhfblrifhl4ghiuf"
let b = "abca"
let c = "aabbc"
solution(inputString: c)

