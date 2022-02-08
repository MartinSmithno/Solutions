import Foundation

/*
 * Complete the 'timeConversion' function below.
 *
 * The function is expected to return a STRING.
 * The function accepts STRING s as parameter.
 */

func timeConversion(s: String) -> String {
    var hour = Int(s.prefix(2))!
    var newHour : String = ""
    var rest = s.dropLast(2)
    var result : String = ""
    if s.contains("PM"){
        if hour == 12 {
            result = String(rest)
        }else {
        hour += 12
        newHour = String(hour)
        result = "\(newHour)\(rest.dropFirst(2))"
        }
    }else if s.contains("AM") && hour == 12{
        newHour = "00"
        result = "\(newHour)\(rest.dropFirst(2))"
    }else {
        result = String(rest)
    }
    
    return result
}


timeConversion(s: "12:05:45PM")
