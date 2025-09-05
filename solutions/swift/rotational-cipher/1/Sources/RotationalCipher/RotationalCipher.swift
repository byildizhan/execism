func rotateCipher(_ input: String, shift: Int) -> String {
    var encodedChars: [Character] = []

    for char in input {
        let base: UInt8
        if char.isUppercase {
            base = 65
        } else if char.isLowercase {
            base = 97
        } else {
            encodedChars.append(char)
            continue
        }

        let ascii = char.asciiValue!
        let rotated = ((Int(ascii) - Int(base) + shift) % 26) + Int(base)
        encodedChars.append(Character(UnicodeScalar(rotated)!))
    }

    return String(encodedChars)
}
