import Foundation

/*
 * Complete the 'gradingStudents' function below.
 *
 * The function is expected to return an INTEGER_ARRAY.
 * The function accepts INTEGER_ARRAY grades as parameter.
 */

func gradingStudents(grades: [Int]) {
    // Write your code here

    var result : [Int] = []
    
    for each in grades {
        if each <= 37 {
            result.append(each)
        } else if each%10 == 8 {
            result.append(each+2)
        } else if each%10 == 9 {
            result.append(each+1)
        }else {
            result.append(each)
        }
    }
    print( result )
    
}

gradingStudents(grades:[12,45,67,89,99,2,56,34,58,37,38])
