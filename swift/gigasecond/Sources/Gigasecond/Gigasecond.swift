//Solution goes in Sources
import Foundation

@available(macOS 10.12, *)
class Gigasecond {
    
    var description: String?
    
    init?(from: String) {
        let dateFormatter = ISO8601DateFormatter()
        let timeInterval: Double = 1_000_000_000
        let date = dateFormatter.date(from: from + "+0000")
        self.description = "\(Date(timeInterval: timeInterval, since: date!))" + "+0000"
    }
}

//let dateFormatterGet = DateFormatter()
//dateFormatterGet.dateFormat = "yyyy-MM-dd HH:mm:ss"
//
//let dateFormatterPrint = DateFormatter()
//dateFormatterPrint.dateFormat = "MMM dd,yyyy"
//
//if let date = dateFormatterGet.date(from: "2016-02-29 12:24:26") {
//    print(dateFormatterPrint.string(from: date))
//} else {
//   print("There was an error decoding the string")
//}
