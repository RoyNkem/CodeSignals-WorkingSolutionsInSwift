/*
 An IP address is a numerical label assigned to each device (e.g., computer, printer) participating in a computer network that uses the Internet Protocol for communication. There are two versions of the Internet protocol, and thus two versions of addresses. One of them is the IPv4 address.
 
 Given a string, find out if it satisfies the IPv4 address naming rules.
 
 Example
 
 => For inputString = "172.16.254.1", the output should be
 solution(inputString) = true;
 
 => For inputString = "172.316.254.1", the output should be
 solution(inputString) = false.
 316 is not in range [0, 255].
 
 => For inputString = ".254.255.0", the output should be
 solution(inputString) = false.
 There is no first number.
 
 func solution(inputString: String) -> Bool {
 let components = inputString.components(separatedBy: ".")
 
 if components.count != 4 {
 return false
 }
 
 for str in components {
 if str.count == 0 {
 return false
 }
 //        if str.count > 1 {
 //            return str.first == "0" ? false : true
 //        }
 guard let num = Int(str), 0 ... 255 ~= num else {
 return false
 }
 }
 return true
 }
 
 
 */

func solution(inputString: String) -> Bool {
    if checkNoDoubleDot(inputString) == true {
        let components = inputString.split(separator: ".")
        if components.count == 4 {
            for i in 0..<4 {
                if let val = Int(String(components[i])) {
                    if val > 255 || !checkNoLeadingZeros(String(components[i])) {
                        print("255/00")
                        return false
                    }
                } else {
                    return false
                }
            }
        } else {
            return false
        }
        
        return true
    } else {
        return false
    }
}

func checkNoDoubleDot(_ str: String) -> Bool {
    return str.contains("..") ? false : true
}

func checkNoLeadingZeros(_ part: String) -> Bool {
    print("start index: \(part[part.startIndex])")
    return part.count > 1 && part[part.startIndex] == "0" ? false : true
}

//Test
let a = "64.233.161.00"
let b = "1.1.1.1a"
solution(inputString: a)
