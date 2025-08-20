import Foundation

struct Acronym {
    static func abbreviate(_ phrase: String) -> String {
        let replaced = phrase.replacingOccurrences(of: "-", with: " ")
        let cleaned = replaced.filter { char in
            char.isLetter || char.isWhitespace
        }
        let words = cleaned.components(separatedBy: " ").filter { !$0.isEmpty }
        var acronym = ""
      
        for word in words {
            if let first = word.first {
                acronym += String(first).uppercased()
            }
        }
        
        return acronym
    }
}
