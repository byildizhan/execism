class Diamond {
   static func makeDiamond(letter: Character) -> [String] {
    var currentAsciiValue = 65
    var resultStringList : [String] = []
    if let mainLetterAsciiValue = letter.asciiValue {
      while currentAsciiValue < mainLetterAsciiValue{
          resultStringList.append("\(String(repeating: " ", count: Int(mainLetterAsciiValue) - currentAsciiValue))\(currentAsciiValue > 65 ? "\(Character(UnicodeScalar(currentAsciiValue)!))\(String(repeating: " ", count: (currentAsciiValue - 65) * 2 - 1))\(Character(UnicodeScalar(currentAsciiValue)!))" : "\(Character(UnicodeScalar(currentAsciiValue)!))")\(String(repeating: " ", count: Int(mainLetterAsciiValue) - currentAsciiValue))")
          currentAsciiValue += 1
      }
        while currentAsciiValue >= 65{
            resultStringList.append("\(String(repeating: " ", count: Int(mainLetterAsciiValue) - currentAsciiValue))\(currentAsciiValue > 65 ? "\(Character(UnicodeScalar(currentAsciiValue)!))\(String(repeating: " ", count: (currentAsciiValue - 65) * 2 - 1))\(Character(UnicodeScalar(currentAsciiValue)!))" : "\(Character(UnicodeScalar(currentAsciiValue)!))")\(String(repeating: " ", count: Int(mainLetterAsciiValue) - currentAsciiValue))")
            currentAsciiValue = currentAsciiValue - 1
        }
    }
       return resultStringList
  }
}