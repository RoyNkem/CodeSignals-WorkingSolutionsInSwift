/*
 You are given an array of integers. On each move you are allowed to increase exactly one of its element by one. Find the minimal number of moves required to obtain a strictly increasing sequence from the input.

 Example:
        => For inputArray = [1, 1, 1], the output should be
           solution(inputArray) = 3.
 */

func solution(inputArray: [Int]) -> Int {
    /*
     => step refers to the number of well "steps" that we need to make a succeeding num greater than the former by 1
     => save the original value of input array in tempArray and use it for the operations
     */
    var step = 0
    var tempArray = inputArray
    /*
     compare two consecutive elements and check if the first is greater than the second.
     in that case, increase the second element i.e (at index[i+1]) so that it is greater than the first by 1.
     Also increase the step count which indicates the number of steps it would take to get to a number higher than the previous by 1.
     */
    for i in 0..<tempArray.count - 1 {
        let left = tempArray[i]
        let right = tempArray[i + 1]
        print("left: \(left) and right: \(right)")
        
        if left >= right {
            let temp = left - right + 1
            tempArray[i + 1] += temp
            step += temp
            print("step: \(step)")
            print("\(temp) and array: \(tempArray)")
        }
    }
    print("step: \(step)")
    return step
}

//Test
let a = [-1000, 10, -2, 10]
let b = [1, 1, 1]

solution(inputArray: a)
