func pascalsTriangle(rows: Int) -> [[Int]] {
    var result: [[Int]] = []

    guard rows > 0 else { return result }

    for i in 0..<rows {
        var row: [Int] = []
        for j in 0...i {
            if j == 0 || j == i {
                row.append(1)
            } else {
                row.append(result[i - 1][j - 1] + result[i - 1][j])
            }
        }
        result.append(row)
    }

    return result
}


