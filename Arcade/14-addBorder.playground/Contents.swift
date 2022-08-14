/*
 Given a rectangular matrix of characters, add a border of asterisks(*) to it.
 For picture = ["abc",
                "ded"]
 the output should be

 solution(picture) = ["*****",
                       "*abc*",
                       "*ded*",
                       "*****"]

 */

func solution(picture: [String]) -> [String] {
    let asteriks = String(repeating: "*", count: picture[0].count + 2)
    let pictureWithBorder = picture.map { "*" + $0 + "*" }
    return [asteriks] + pictureWithBorder + [asteriks]
}

//Test
let a = ["abc",
         "ded"]
solution(picture: a)
