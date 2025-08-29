class Anagram {
    var word : String
    
    init(word: String) {
        self.word = word.lowercased()
    }
    
    func match(_ other: [String]) -> [String] {
        var result: [String] = []
        for otherWord in other {
            if word.sorted() == otherWord.lowercased().sorted() && word != otherWord.lowercased() {
                result.append(String(otherWord))
            }
        }
        return result
    }
}