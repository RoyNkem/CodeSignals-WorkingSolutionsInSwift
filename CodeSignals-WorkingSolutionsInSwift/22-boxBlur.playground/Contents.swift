/*
 Last night you partied a little too hard. Now there's a black and white photo of you that's about to go viral! You can't let this ruin your reputation, so you want to apply the box blur algorithm to the photo to hide its content.

 The pixels in the input image are represented as integers. The algorithm distorts the input image in the following way: Every pixel x in the output image has a value equal to the average value of the pixel values from the 3 × 3 square that has its center at x, including x itself. All the pixels on the border of x are then removed.

 Return the blurred image as an integer, with the fractions rounded down.

 Example

 For

 image = [[1, 1, 1],
          [1, 7, 1],
          [1, 1, 1]]
 the output should be solution(image) = [[1]].

 To get the value of the middle pixel in the input 3 × 3 square: (1 + 1 + 1 + 1 + 7 + 1 + 1 + 1 + 1) = 15 / 9 = 1.66666 = 1. The border pixels are cropped from the final result.

 For

 image = [[7, 4, 0, 1],
          [5, 6, 2, 2],
          [6, 10, 7, 8],
          [1, 4, 2, 0]]
 the output should be

 solution(image) = [[5, 4],
                   [4, 4]]
 There are four 3 × 3 squares in the input image, so there should be four integers in the blurred output. To get the first value: (7 + 4 + 0 + 5 + 6 + 2 + 6 + 10 + 7) = 47 / 9 = 5.2222 = 5. The other three integers are obtained the same way, then the surrounding integers are cropped from the final result.
 */
//
//func solution(image: [[Int]]) -> [[Int]] {
//    let rows = image.count
//    let columns = image[0].count
//    var blur = [[Int]]()
//    var sum = 0
//
//    for i in 0..<columns {
//        for j in 0..<rows {
//            sum += image[j][i]
//        }
//    }
//
//    blur[0].append(sum/9)
//    return blur
//}

func solution(image: [[Int]]) -> [[Int]] {
    /*the result array always have dimension of 2 less than the image"s dimension
     Example:
     => if image is 3 by 3 matrix, result is 1 by 1
     => if image is 4 by 4, result is 2 by 2
     */
    
    let rows = image.count - 2
    let columns = image[0].count - 2

    //specify the dimensions of the result array depending on the image's dimensions
    var result = Array(repeating: Array(repeating: 0, count: columns), count: rows)
    var sum = 0

    for i in 0..<result.count {
        for j in 0..<result[i].count{
            sum = 0
            //find the average of each 3 by 3 matrix
            for indexRow in i...image.count - (result.count - i){
                for indexCol in j...image[0].count - (result[i].count - j){
                    print("row: \(indexRow), column: \(indexCol), image: \(image[indexRow][indexCol])")
                    sum += image[indexRow][indexCol]
                    print("sum: \(sum)")
                }
            }
            result[i][j] = sum / 9
        }
    }
    return result
}
//Test
let a = [[7, 4, 0, 1],
         [5, 6, 2, 2],
         [6, 10, 7, 8],
         [1, 4, 2, 0]]
solution(image: a)
