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
    let n = sequence.count
    
    guard n >= 2 else { return true }
    
    var num1 = Int()
    var num2 = Int()
    
    for i in (1..<n-1) {
        if sequence[i-1] >= sequence[i] {
            num1 += 1
        }
        if sequence[i-1] >= sequence[i+1] {
            num2 += 1
        }
    }
    
    if sequence[n-1] <= sequence[n-2] {
        num1 += 1
    }
    
    if num1 <= 1 && num2 <= 1 {
        return true
    } else {
        return false
    }
}

//Test
let arr = [1,3,2]
solution(sequence: arr)
