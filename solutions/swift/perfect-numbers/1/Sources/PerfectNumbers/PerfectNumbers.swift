import Foundation

enum NumberType {
    case perfect
    case abundant
    case deficient
}

enum ClassificationError: Error {
    case invalidInput
}

func classify(number n: Int) throws -> NumberType {
    guard n > 0 else {
        throw ClassificationError.invalidInput
    }
    
    if n == 1 {
        return .deficient
    }

    var sum = 0
    let sqrtN = Int(Double(n).squareRoot())
    
    for i in 1...sqrtN {
        if n % i == 0 {
            sum += i
            let otherDivisor = n / i
            if otherDivisor != i && otherDivisor != n {
                sum += otherDivisor
            }
        }
    }
    
    if sum == n {
        return .perfect
    } else if sum > n {
        return .abundant
    } else {
        return .deficient
    }
}
