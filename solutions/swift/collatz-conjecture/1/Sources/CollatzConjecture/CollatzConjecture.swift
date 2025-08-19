enum ConjectureError : Error {
  case zeroError
  case negativeError
}

class CollatzConjecture {
  static func steps(_ number: Int) throws -> Int? {
    var stepCount = 0
    var tempNumber = number
    if tempNumber < 0 {
      throw ConjectureError.negativeError
    } else if tempNumber == 0 {
      throw ConjectureError.zeroError
    } else {
      while tempNumber != 1 {
        if tempNumber % 2 == 0 {
          tempNumber /= 2
        } else {
          tempNumber = (tempNumber * 3) + 1
        }
        stepCount += 1
      }
      return stepCount
    }
  }
}
