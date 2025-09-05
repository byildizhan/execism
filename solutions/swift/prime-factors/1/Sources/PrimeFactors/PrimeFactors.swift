public func primeFactors(_ number: Int64) -> [Int64] {
    var factors: [Int64] = []
    var n = number
    var divisor: Int64 = 2
    
    while n > 1 {
        while n % divisor == 0 {
            factors.append(divisor)
            n /= divisor
        }
        divisor += 1
        if divisor * divisor > n && n > 1 {
            factors.append(n)
            break
        }
    }
    return factors
}