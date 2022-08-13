/*
 Given a sequence of integers as an array, determine whether it is possible to obtain a strictly increasing sequence
 by removing no more than one element from the array.
 
 Note: sequence a0, a1, ..., an is considered to be a strictly increasing if a0 < a1 < ... < an.
 Sequence containing only one element is also considered to be strictly increasing.
 
 Example:
 - For sequence = [1, 3, 2, 1], the output should be almostIncreasingSequence(sequence) = false.
 There is no one element in this array that can be removed in order to get a strictly increasing sequence.
 - For sequence = [1, 3, 2], the output should be almostIncreasingSequence(sequence) = true.
 You can remove 3 from the array to get the strictly increasing sequence [1, 2].
 Alternately, you can remove 2 to get the strictly increasing sequence [1, 3].
 */

func solution(sequence: [Int]) -> Bool {
    //get the length of the given array
    let n = sequence.count
    //only allow arrays with more than 2 elements
    guard n >= 2 else { return true }
    
    //initialize variables num1 (to check adjacent numbers of current index) and num2 (to check the number after current index). The idea is to use the values of num1 and num2 to monitor the number of elements that are less than the previous element
    var num1 = Int()
    var num2 = Int()
    
    /*
     loop through the elements in the given array
       check the numbers near the current running index.
     for example, let index = [1]
               => check if the number before i.e index[0] is >= [1],
               => increase the value of num1 in that case.
               => check if the number at index[0] is >= number at index[2],
               => increase the value of num2 in that case.
     */
    for i in (1..<n-1) {
        if sequence[i-1] >= sequence[i] {
            num1 += 1
        }
        if sequence[i-1] >= sequence[i+1] {
            num2 += 1
        }
    }
    
    /*
     if the last element rep by sequence[n-1] is less than the element before it at index[n-2],
     increase the value of num1.
     */
    if sequence[n-1] <= sequence[n-2] {
        num1 += 1
        print("\(num1)")
    }
    if num1 <= 1 && num2 <= 1 {
        return true
    } else {
        return false
    }
}

//Test
let arr = [1,2]
solution(sequence: arr)
