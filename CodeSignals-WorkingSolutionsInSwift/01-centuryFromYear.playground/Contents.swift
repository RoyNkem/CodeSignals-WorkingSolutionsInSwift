/*
 Given a year, return the century it is in. The first century spans from the year 1 up to and including the year 100, the second -
 from the year 101 up to and including the year 200, etc.

 Example:
 - For year = 1905, the output should be centuryFromYear(year) = 20;
 - For year = 1700, the output should be centuryFromYear(year) = 17.
 */

func centuryFromYear(year: Int) -> Int {
    var century = 1
    
    guard year > 0 else {
        return year
    }
    
    if year % 100 == 0 {
        century = year/100
    } else {
        century = Int((year + 100)/100)
    }
    return century
}

//Test
let year = 1905
centuryFromYear(year: year)
