func flattenArray(_ input: [Any?]) -> [Int] {
    var result: [Int] = []

    for item in input {
        if let value = item as? Int {
            result.append(value)
        } else if let array = item as? [Any?] {
            result.append(contentsOf: flattenArray(array))
        }
    }

    return result
}
