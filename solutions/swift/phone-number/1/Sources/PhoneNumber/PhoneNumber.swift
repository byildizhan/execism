enum PhoneNumberError: Error {
    case invalidPhoneNumber
}

struct PhoneNumber {
    let raw: String

    init(_ raw: String) {
        self.raw = raw
    }

    func clean() throws -> String {
        let digitsOnly = raw.filter { "0123456789".contains($0) }
        var cleaned = digitsOnly

        if cleaned.count == 11 {
            guard cleaned.first == "1" else {
                throw PhoneNumberError.invalidPhoneNumber
            }
            cleaned.removeFirst()
        }

        guard cleaned.count == 10 else {
            throw PhoneNumberError.invalidPhoneNumber
        }

        let areaCode = cleaned.prefix(3)
        let exchangeCode = cleaned.dropFirst(3).prefix(3)

        if areaCode.first == "0" || areaCode.first == "1" ||
           exchangeCode.first == "0" || exchangeCode.first == "1" {
            throw PhoneNumberError.invalidPhoneNumber
        }

        return cleaned
    }
}
