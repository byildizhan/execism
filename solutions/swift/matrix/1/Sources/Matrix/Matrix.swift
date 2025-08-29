struct Matrix {
    var rows: [[Int]]
    var columns: [[Int]]
    
    init(_ matrix: String) {
        let tempRows = matrix.split(separator: "\n").map { $0.split(separator: " ").compactMap { Int(String($0)) } }
        rows = tempRows
        columns = (0..<tempRows[0].count).map { col in tempRows.map { $0[col] } }
        
    }
}