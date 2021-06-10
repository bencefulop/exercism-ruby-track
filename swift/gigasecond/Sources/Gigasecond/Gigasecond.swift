//Solution goes in Sources
import Foundation

class Gigasecond {

    var description: String?
    let timeInterval: Double = 1_000_000_000

    init?(from: String) {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        dateFormatter.timeZone = TimeZone(secondsFromGMT: 0)
        let date = dateFormatter.date(from: from)
        let newDate = Date(timeInterval: timeInterval, since: date!)
        self.description = dateFormatter.string(from: newDate)
    }
}
