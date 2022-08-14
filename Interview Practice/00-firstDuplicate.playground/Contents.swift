/*
 
 */

func solution(a: [Int]) -> Int {
    var set:Set<Int> = Set()
    for i in a {
        if(set.contains(i)) {
            return i;
        } else {
            set.insert(i);
        }
    }
    return -1;
}

//Test
let a =
solution(a: a)
