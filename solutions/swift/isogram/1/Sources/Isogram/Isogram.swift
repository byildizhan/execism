func isIsogram(_ string: String) -> Bool {
  var includedLetter : [Character] = []
    
  for char in string.lowercased() {
    if char.isLetter {
      if includedLetter.contains(char) {
        return false
      }
      includedLetter.append(char)
    }
  }
    
    return true
}
