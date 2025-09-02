import Foundation

func isPangram(_ text: String) -> Bool {
    let alphabetSet: Set<Character> = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]

   let onlyLetters = text.filter { $0.isLetter }.lowercased()
  
        for letter in alphabetSet {
            if !onlyLetters.contains(letter){
                return false
            } else {
                continue
            }
        }
    
    
    return true
}
