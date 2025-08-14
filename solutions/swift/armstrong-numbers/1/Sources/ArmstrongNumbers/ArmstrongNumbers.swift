import Foundation

func isArmstrongNumber(_ number: Int) -> Bool {
  let digits = String(number).compactMap { Int(String($0)) }
  let power = digits.count
  var sum : Double = 0

  for digit in digits {
    sum += pow(Double(digit), Double(power))
  }
  
  return sum == Double(number)
}
