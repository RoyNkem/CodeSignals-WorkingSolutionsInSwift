/*
 Two arrays are called similar if one can be obtained from another by swapping at most one pair of elements in one of the arrays.
 Given two arrays a and b, check whether they are similar.
 
 For a = [1, 2, 3] and b = [1, 2, 3], the output should be
 solution(a, b) = true.

 The arrays are equal, no need to swap any elements.

 For a = [1, 2, 3] and b = [2, 1, 3], the output should be
 solution(a, b) = true.

 We can obtain b from a by swapping 2 and 1 in b.

 For a = [1, 2, 2] and b = [2, 1, 1], the output should be
 solution(a, b) = false.

 Any swap of any two elements either in a or in b won't make a and b equal.
 */

func solution(a: [Int], b: [Int]) -> Bool {
    guard a.count == b.count else { return false }
    /*
     Initialize 2 arr to store elements that are not similar
     notSimilar is a variable that tracks num of elements in arr a that are not same compared to corresponding element in arr b
     */
    var checkA = [Int]()
    var checkB = [Int]()
    var notSimilar = 0
    
    //Loop through elements in arr a and check if the respective elements are same
    for i in (0..<a.count) {
        if a[i] != b[i] {
            notSimilar += 1
            checkA.append(a[i])
            checkB.append(b[i])
        }
    }
    //use the tracking numbers to determine whether they can be similar by swapping a pair of elements
    if notSimilar == 0 {
        return true
    } else if notSimilar == 2 {
        return checkA.sorted() == checkB.sorted() ? true : false
    } else {
        return false
    }
}

//Test

let a = [1,2,2]
let b = [2,1,1]
solution(a: a, b: b)
