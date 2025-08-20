import Foundation

struct Triangle {
    let sides: [Double]
    
    init(_ sides: [Double]) {
        self.sides = sides
    }
    
    // Kenarların hepsi pozitif mi ve üçgen eşitsizliği sağlanıyor mu
    var isValid: Bool {
        guard sides.count == 3 else { return false }
        let a = sides[0], b = sides[1], c = sides[2]
        return a > 0 && b > 0 && c > 0 &&
               a + b >= c &&
               a + c >= b &&
               b + c >= a
    }
    
    var isEquilateral: Bool {
        guard isValid else { return false }
        return sides[0] == sides[1] && sides[1] == sides[2]
    }
    
    var isIsosceles: Bool {
        guard isValid else { return false }
        return sides[0] == sides[1] || sides[1] == sides[2] || sides[0] == sides[2]
    }
    
    var isScalene: Bool {
        guard isValid else { return false }
        return sides[0] != sides[1] && sides[1] != sides[2] && sides[0] != sides[2]
    }
}
