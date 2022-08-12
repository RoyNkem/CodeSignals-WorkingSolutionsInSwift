//
//  adjacentElementsProduct .swift
//
//
//  Created by Roy Aiyetin on 12/08/2022.

/*Given an array of integers, find the pair of adjacent elements that has the largest product and return that product.

Example:
For inputArray = [3, 6, -2, -5, 7, 3], the output should be adjacentElementsProduct(inputArray) = 21.
7 and 3 produce the largest product.
 */

func solution(inputArray: [Int]) -> Int  {
    var productArray: [Int] = []
    var product = 0
    
    guard inputArray.count > 1 else {
        return inputArray.first ?? 0
    }

    for i in (0..<inputArray.count) {
        for j in (i+1..<inputArray.count) {
            product = inputArray[i] * inputArray[j]
            productArray.append(product)
        }
    }
    return productArray.max()!
}

//Test
let num = [3,6,-2,-5,7,3]
solution(inputArray: num)
