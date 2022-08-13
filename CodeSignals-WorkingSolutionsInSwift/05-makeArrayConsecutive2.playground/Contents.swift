/*
 Ratiorg got statues of different sizes as a present from CodeMaster for his birthday, each statue having an non-negative integer size.
 Since he likes to make things perfect, he wants to arrange them from smallest to largest so that each statue will be bigger than the
 previous one exactly by 1. He may need some additional statues to be able to accomplish that. Help him figure out the minimum number of
 additional statues needed.
 
 Example:
 For statues = [6, 2, 3, 8], the output should be makeArrayConsecutive2(statues) = 3.
 Ratiorg needs statues of sizes 4, 5 and 7.
 */

func solution(statues: [Int]) -> Int {
    //initialize empty array to hold desired results
    var result = [Int]()
    
    //sort the given array in ascending order
    let sortedStatues = statues.sorted()
    
    //take the first element in sorted array. It will be used as starting point to avoid going through unwanted elements
    var i = sortedStatues.first!

    //loop through the sorted array by 1 step, starting from the first element, and append the elemnt that is not contained in the given array
    while i != sortedStatues.last {
        i += 1
        
        if !sortedStatues.contains(i) {
            result.append(i)
        }
    }
    return result.count
}

//Test
let num = [7,8]
solution(statues: num)
