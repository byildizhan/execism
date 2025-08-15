import Foundation

struct HighScores {
    let scores: [Int]

    var latest: Int {
        return scores.last ?? 0
    }

    var personalBest: Int {
        return scores.max() ?? 0
    }

    var topThree: [Int] {
        let sortedScores = scores.sorted(by: >)
        return Array(sortedScores.prefix(3))
    }
}
