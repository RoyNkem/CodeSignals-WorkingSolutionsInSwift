/*
 Given an array of integers, find the maximal absolute difference between any two of its adjacent elements.
 
 Example
 
 For inputArray = [2, 4, 1, 0], the output should be
 solution(inputArray) = 3.
 */

func solution(inputArray: [Int]) -> Int {
    /*
     => initialize var to store absolute difference between two adjacent elements
     => initialize arr to collect each difference
     */
    var absoluteDifference = Int()
    var arrayOfDifference = [Int]()
    
    //loop through each element and append the abs difference and return the max difference
    for i in (0..<inputArray.count-1) {
        let first = inputArray[i]
        let second = inputArray[i+1]
        absoluteDifference = abs(second - first)
        arrayOfDifference.append(absoluteDifference)
    }
    return arrayOfDifference.max()!
}

//Test
let a = [2, 4, 1, 0]
solution(inputArray: a)
