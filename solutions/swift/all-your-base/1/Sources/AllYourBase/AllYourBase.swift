import Foundation

enum BaseError: Error {
  case invalidPositiveDigit
  case invalidOutputBase
  case invalidInputBase
  case negativeDigit
}
struct Base {
  static func outputDigits(inputBase: Int, inputDigits: [Int], outputBase: Int) throws -> [Int] {

    if inputBase < 2  {
      throw BaseError.invalidInputBase
    } else if outputBase < 2 {
      throw BaseError.invalidOutputBase
    } else if inputDigits.contains { $0 < 0 } {
      throw BaseError.negativeDigit
    } else if inputDigits.contains { $0 >= inputBase} {
      throw BaseError.invalidPositiveDigit
    } else if inputDigits.count == 0 {
      return [0]
    } else {
      var resultNumber: [Int] = []
      let lengthOfIndex = inputDigits.count - 1
      
      var quotient = 0
    
      for (index, digit) in inputDigits.enumerated() {
        let powerNum = lengthOfIndex - index
        quotient += digit * Int(pow(Double(inputBase), Double(powerNum)))
      }

      while quotient != 0 {
          resultNumber.insert(quotient % outputBase, at: 0)
          quotient = quotient / outputBase
      }
      return resultNumber.count == 0 ? [0] : resultNumber
    }
  }
}
