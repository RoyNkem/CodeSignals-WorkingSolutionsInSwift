/*
 Call two arms equally strong if the heaviest weights they each are able to lift are equal.

 Call two people equally strong if their strongest arms are equally strong (the strongest arm can be both the right and the left), and so are their weakest arms.

 Given your and your friend's arms' lifting capabilities find out if you two are equally strong.

 Example

 => For yourLeft = 10, yourRight = 15, friendsLeft = 15, and friendsRight = 10, the output should be
    solution(yourLeft, yourRight, friendsLeft, friendsRight) = true;
 => For yourLeft = 15, yourRight = 10, friendsLeft = 15, and friendsRight = 10, the output should be
    solution(yourLeft, yourRight, friendsLeft, friendsRight) = true;
 => For yourLeft = 15, yourRight = 10, friendsLeft = 15, and friendsRight = 9, the output should be
    solution(yourLeft, yourRight, friendsLeft, friendsRight) = false.

 */

func solution(yourLeft: Int, yourRight: Int, friendsLeft: Int, friendsRight: Int) -> Bool {
    let a: Int = yourLeft
    let b: Int = yourRight
    let c = friendsLeft
    let d = friendsRight
    /*
     => return and compare the strongest arm for both person
     => return and compare the weakest arm for both person
     => return true if the two comparisons are true, otherwise return false
     */
    let isStrongArmEqual = isEqual(myArm: max(a, b), friendArm: max(c, d))
    let isWeakArmEqual = isEqual(myArm: min(a, b), friendArm: min(c, d))
    
    return isStrongArmEqual && isWeakArmEqual
}

func isEqual(myArm: Int, friendArm: Int) -> Bool {
    return myArm == friendArm ? true : false
}

//Test
let a = 15
let b = 10
let c = 15
let d = 9
solution(yourLeft: a, yourRight: b, friendsLeft: c, friendsRight: d)
