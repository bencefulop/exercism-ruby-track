//Solution goes in Sources
import Foundation

struct Bob {
    static func hey(_ input: String) -> String {
        var answer = ""
        let shoutedInput = input.uppercased()
        
        switch input {
        case let input where input.trimmingCharacters(in: .whitespaces).isEmpty:
            answer = "Fine. Be that way!"
        case let input where input == shoutedInput:
            if input.digitsOnly && input.last == "?" {
                answer = "Sure."
            }
            else if input.digitsOnly && input.last == "." {
                answer = "Whatever."
            } else {
                answer = "Whoa, chill out!"
            }
        case let input where input.last == "?":
            answer = "Sure."
        default:
            answer = "Whatever."
        }
        return answer
    }
}

extension String {
    var digitsOnly: Bool {
        let digitsOfSting = components(separatedBy: CharacterSet.decimalDigits.inverted).joined()
        return !(digitsOfSting.isEmpty) && digitsOfSting.allSatisfy { $0.isNumber }
    }
}
