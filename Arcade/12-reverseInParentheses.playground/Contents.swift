/*
 Write a function that reverses characters in (possibly nested) parentheses in the input string.
 Input strings will always be well-formed with matching ()s.

 Example:
 - For inputString = "(bar)", the output should be reverseInParentheses(inputString) = "rab";
 - For inputString = "foo(bar)baz", the output should be reverseInParentheses(inputString) = "foorabbaz";
 - For inputString = "foo(bar)baz(blim)", the output should be reverseInParentheses(inputString) = "foorabbazmilb";
 - For inputString = "foo(bar(baz))blim", the output should be reverseInParentheses(inputString) = "foobazrabblim".
 Because "foo(bar(baz))blim" becomes "foo(barzab)blim" and then "foobazrabblim".
 */

func solution(inputString: String) -> String {
    var str = inputString
    while let openPar = str.lastIndex(of: "(") {
        // Should really use a guard let here, but the problem states that all parens are well formed
        let closePar = str[openPar...].firstIndex(of:")")!
        //reverse the letters in bracket
        let reversedStr = str[str.index(after: openPar)..<closePar].reversed()
        //Replace the specified subrange of elements with the given collection.
        str.replaceSubrange(openPar...closePar, with: reversedStr)
    }
    
    return str
}

//OR

func solution2(inputString: String) -> String {
   var resString = ""
        var openPar = 0
        var nestedString = ""
        
        for char in inputString{
            if char == "("{
                if openPar != 0{
                    nestedString.append(char)
                }
                openPar += 1
            }
            else if char == ")"{
                openPar -= 1
                if openPar != 0{
                    nestedString.append(char)
                }
                else{
                    resString += solution(inputString: nestedString).reversed()
                    nestedString = ""
                }
            }
            else{
                if openPar != 0{
                    nestedString.append(char)
                }
                else{
                    resString.append(char)
                }
            }
        }
        return resString
    }



//Test
let a = "foo(bar)baz"

solution(inputString: a)
solution2(inputString: a)
