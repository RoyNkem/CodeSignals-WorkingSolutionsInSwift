/*
 Ticket numbers usually consist of an even number of digits. A ticket number is considered lucky
 if the sum of the first half of the digits is equal to the sum of the second half.
 Given a ticket number n, determine if it's lucky or not.
 
 Example
 - For n = 1230, the output should be isLucky(n) = true;
 - For n = 239017, the output should be isLucky(n) = false.
 */

func isLucky(n: Int) -> Bool {
    guard String(n).count % 2 == 0 else {return false}
    
    let digit = n.digits
    let mid = digit.count/2
    let leftHalf = digit[0..<mid]
    let rightHalf = digit[mid..<digit.count]
    
    let leftSum = leftHalf.reduce(0, +)
    let rightSum = rightHalf.reduce(0, +)
    
    guard leftSum == rightSum else {
        return false
    }
    
    return true
}

extension BinaryInteger {
    var digits: [Int] { // compact map combines map and filter
        //create a string sequence representing the given value and transforms each chars to individual integers
        return String(describing: self).compactMap { val in
            Int(String(val))
        }
    }
}

//Test
let n = 239017
isLucky(n: n)

