//Solution goes in Sources
import Foundation

struct Bob {
    static func hey(_ input: String) -> String {
        var answer = ""
        let shoutedInput = input.uppercased()
        
        
        if input.last == "." {
            answer = "Whatever."
        }

        if input.last == "?" {
            answer = "Sure."
        }
        
        if input == shoutedInput {
            answer = "Whoa, chill out!"
        }
        
        if input.trimmingCharacters(in: .whitespaces).isEmpty {
            answer = "Fine. Be that way!"
        }


        return answer
    }
}
