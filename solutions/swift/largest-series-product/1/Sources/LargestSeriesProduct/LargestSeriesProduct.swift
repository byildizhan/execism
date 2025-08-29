enum NumberSeriesError: Error {
    case spanIsZeroOrNegative
    case spanLongerThanInput
    case invalidCharacter
}

class NumberSeries {
    var serie: String
    
    init(_ serie: String) {
        self.serie = serie
    }
    
    func largestProduct(_ len: Int) throws -> Int {
        guard len > 0 else { throw NumberSeriesError.spanIsZeroOrNegative }
        guard len <= serie.count else { throw NumberSeriesError.spanLongerThanInput }
        
        var lastResult = 0
        let chars = Array(serie)
        
        for start in 0...(chars.count - len) {
            let slice = chars[start..<(start + len)]
            let product = try slice.map { ch in
                guard let num = Int(String(ch)) else { throw NumberSeriesError.invalidCharacter }
                return num
            }.reduce(1, *)
            
            lastResult = max(lastResult, product)
        }
        
        return lastResult
    }
}

