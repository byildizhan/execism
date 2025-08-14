class ETL {
  static func transform(_ old: [String: [String]]) -> [String: Int] {
    var newStyle : [String : Int] = [:]

    for (oldKey, oldValue) in old {
      for letter in oldValue{
        newStyle[letter.lowercased()] = Int(oldKey)
      }
    }

    return newStyle
  }
}
