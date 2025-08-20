import Foundation

class BottleSong {
    let bottles: Int

    init(bottles: Int) {
        self.bottles = bottles
    }

    func song(takedown: Int) -> [String] {
        var verses: [String] = []
        let maxTakedown = min(takedown, bottles)
        
        for n in stride(from: bottles, to: bottles - maxTakedown, by: -1) {
            let firstLine = "\(numberToWordsCapital(n)) green bottle\(n > 1 ? "s" : "") hanging on the wall,"
            let secondLine = firstLine
            let thirdLine = "And if one green bottle should accidentally fall,"
            let fourthLine: String
            if n - 1 > 0 {
                fourthLine = "There'll be \(numberToWordsLower(n - 1)) green bottle\(n - 1 > 1 ? "s" : "") hanging on the wall."
            } else {
                fourthLine = "There'll be no green bottles hanging on the wall."
            }
            
            verses.append(contentsOf: [firstLine, secondLine, thirdLine, fourthLine])
            if n - 1 >= bottles - maxTakedown {
                verses.append("") // boş satır ile ayır
            }
        }
        if verses.last == "" {
            verses.removeLast()
        }
        return verses
    }

    func numberToWordsCapital(_ n: Int) -> String {
        return numberWords[n]?.capitalized ?? "\(n)"
    }

    func numberToWordsLower(_ n: Int) -> String {
        return numberWords[n] ?? "\(n)"
    }

    let numberWords: [Int: String] = [
        0: "no", 1: "one", 2: "two", 3: "three", 4: "four",
        5: "five", 6: "six", 7: "seven", 8: "eight", 9: "nine",
        10: "ten", 11: "eleven", 12: "twelve", 13: "thirteen",
        14: "fourteen", 15: "fifteen", 16: "sixteen", 17: "seventeen",
        18: "eighteen", 19: "nineteen", 20: "twenty"
    ]
}
