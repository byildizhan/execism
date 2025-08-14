
func compute(_ strand1: String, against strand2: String) throws -> Int? {
  enum HammingError: Error {
    case unequalLength
  }  

  if strand1.count != strand2.count {
    throw HammingError.unequalLength
  } else {
    if strand1.isEmpty || strand2.isEmpty {
      return 0
    }
    var distance = 0
        
    for (c1, c2) in zip(strand1, strand2) {
        if c1 != c2 {
            distance += 1
        }
    }
      
      return distance
    }
}

