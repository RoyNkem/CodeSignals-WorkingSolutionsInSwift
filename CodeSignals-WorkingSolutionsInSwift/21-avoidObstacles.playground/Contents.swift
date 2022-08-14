/*
 You are given an array of integers representing coordinates of obstacles situated on a straight line.
 
 Assume that you are jumping from the point with coordinate 0 to the right. You are allowed only to make jumps of the same length represented by some integer.
 
 Find the minimal length of the jump enough to avoid all the obstacles.
 
 Check out the image below for better understanding:
 https://codesignal.s3.amazonaws.com/tasks/avoidObstacles/img/example.png?_tm=1624426122561
 */

//MARK: - EXPLANATION OF CHALLENGE
/*
 This challenge is very tricky, so be careful.
 We are required to get the minimum length of (number of times) we can jump between obstacles to get to the next free point immediately after obstacle.
 => Tip: Always think the goal is to get to the number after the largest obstacle
    
 Example: for [5,3,6,7,9] - largest obstacle is 9
    => the goal is to get to a number after 9 by jumping equal lengths from 0-4, 4-8, 8-12
    => length = 4
 
 => Note: jumps are of equal lengths
 */

//MARK: - EXPLANATION OF SOLUTION
/*
 => length represents the range of each jumps and since it cannot be 1 (because obviously 1 step will not jump past any obstacle), we initialize it as 2
 => starting from 2, we loop through the elements in the array and check if any element can divide the current jump length (i.e 2). if true, the jump length is wrong because it will meet an obstacle.
 => Then we try the next jump length (i.e 3)
    we continue until we get a jump length that does not meet any obstacle (i.e not a factor of any element in the array)
 */

func solution(inputArray: [Int]) -> Int {
    
    var length = 2

    // Use outerloop and innerloop identifier to specify the outer loop and inner loop respectively
outerloop: while(true) {
    print("start while loop")
    print("count at while: \(length)")
innerloop: for i in 0..<inputArray.count {
        print("for loop i = \(i)")
        print("start for loop")
        print("count at for: \(length)")
        if  inputArray[i] % length == 0 {
            length += 1
            print("count at if: \(length)")
            continue outerloop //skip current loop of while statement if condition is true and move to the next
        }
    }
    //terminate while loop when for loop is completely iterated
    break
}
    return length
}

//Test
let a = [5,10]
solution(inputArray: a)

