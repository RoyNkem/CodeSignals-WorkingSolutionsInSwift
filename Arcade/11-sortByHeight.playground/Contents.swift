/*
 Some people are standing in a row in a park. There are trees between them which cannot be moved.
 Your task is to rearrange the people by their heights in a non-descending order without moving the trees.
 People can be very tall!
 
 Example:
 - For a = [-1, 150, 190, 170, -1, -1, 160, 180], the output should be sortByHeight(a) = [-1, 150, 160, 170, -1, -1, 180, 190].
 */

func solution(a: [Int]) -> [Int] {
    //return a new array of only people's height without -1 and sort in ascending order
    let people = a.filter {$0 != -1}.sorted()
    //use makeiterator to retrieve the array's iterator over the elements. This prepares it for looping through
    var peopleIterator = people.makeIterator()
    //return the same size of param array with next value in the iterator
    return a.map { ($0 == -1) ? $0 : peopleIterator.next()! }
}

//OR
func solution2(a: [Int]) -> [Int] {
    var arr = [Int]()
    let sortedArray = a.sorted(by: <).filter{ $0 != -1 }
    
    var iterator = 0
    for value in a {
        
        if value != -1 {
            arr.append(sortedArray[iterator])
            iterator += 1
        } else {
            arr.append(value)
        }
    }
    
    return arr
}

//OR
func solution3(a: [Int]) -> [Int] {
    let treeIndexes = a.enumerated().map { $0.element == -1 ? $0.offset : -1 }.filter { $0 != -1 }
    var sortedArray = a.filter { $0 != -1 }.sorted()
    if !sortedArray.isEmpty {
        for index in treeIndexes {
            sortedArray.insert(-1, at: index)
        }
        return sortedArray
    } else {
        return a
    }
}

//Test
let a = [-1, 150, 190, 170, -1, -1, 160, 180]

solution(a: a)
solution2(a: a)
solution3(a: a)

