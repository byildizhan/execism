class Proverb {
    let pieces: [String]

    init(_ pieces: [String]) {
        self.pieces = pieces
    }

    func recite() -> String {
        if pieces.isEmpty { return "" }

        var lines: [String] = []

        for i in 0..<(pieces.count - 1) {
            lines.append("For want of a \(pieces[i]) the \(pieces[i + 1]) was lost.")
        }

        lines.append("And all for the want of a \(pieces.first!).")
        return lines.joined(separator: "\n")
    }
}
