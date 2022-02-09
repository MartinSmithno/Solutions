import Foundation

/*
 * Complete the 'gradingStudents' function below.
 *
 * The function is expected to return an INTEGER_ARRAY.
 * The function accepts INTEGER_ARRAY grades as parameter.
 */

func gradingStudents(grades: [Int]) -> [Int] {
    // Write your code here

    var result : [Int] = []
    
    for each in grades {
        if each <= 37 {
            result.append(each)
        } else if each%5 == 3 {
            result.append(each+2)
        } else if each%5 == 4 {
            result.append(each+1)
        }else {
            result.append(each)
        }
    }
    return result
    
}

gradingStudents(grades:[12,45,67,89,99,2,56,34,58,37,38])
