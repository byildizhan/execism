import Foundation

class Bob {
    static func response(_ message: String) -> String {
        let trimmedMessage = message.trimmingCharacters(in: .whitespacesAndNewlines)
        let hasLetters = trimmedMessage.rangeOfCharacter(from: .letters) != nil
        
        if trimmedMessage.isEmpty {
            return "Fine. Be that way!"
        } else if trimmedMessage == trimmedMessage.uppercased() && trimmedMessage.last == "?" && hasLetters {
            return "Calm down, I know what I'm doing!"
        } else if trimmedMessage == trimmedMessage.uppercased() && hasLetters {
            return "Whoa, chill out!"
        } else if trimmedMessage.last == "?" {
            return "Sure."
        } else {
            return "Whatever."
        }
    }
}
