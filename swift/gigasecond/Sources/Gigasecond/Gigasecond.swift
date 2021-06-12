//Solution goes in Sources
import Foundation

struct Gigasecond {

    let description: String?
    let timeInterval: Double = 1_000_000_000
    
    private static let dateFormatter: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        dateFormatter.timeZone = TimeZone(secondsFromGMT: 0)
        return dateFormatter
    }()

    init?(from: String) {
        guard let date = Gigasecond.dateFormatter.date(from: from) else { return nil }
        let newDate = Date(timeInterval: timeInterval, since: date)
        self.description = Gigasecond.dateFormatter.string(from: newDate)
    }
}
