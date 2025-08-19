import Foundation

class IsbnVerifier {
    static func isValid(_ string: String) -> Bool {
      
        let chars = string.replacingOccurrences(of: "-", with: "")
        
        if chars.dropLast().contains("X") || chars.count != 10 {
            return false
        }
        
        var list = [Int]()
        for (index, char) in chars.enumerated() {
            if char == "X" {
                list.append(10)
            } else if let num = Int(String(char)) {
                list.append(num)
            } else {
                return false
            }
        }
        
        let listLength = list.count
        var sum = 0
        for (index, num) in list.enumerated() {
            sum += num * (listLength - index)
        }
        
        return sum % 11 == 0
    }
}
