func reverseString(_ input : String) -> String {
  
  var reversedString = ""

  if input == "" {
    return ""
  } else {
      var index = input.index(before: input.endIndex)
      while true {
        reversedString.append(input[index])
                
        if index == input.startIndex {
          break
        }
                
        index = input.index(before: index)
      }
      
    return reversedString
  }
}