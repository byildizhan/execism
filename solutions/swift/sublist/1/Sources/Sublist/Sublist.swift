enum Relation {
    case equal, sublist, superlist, unequal
}

func classifier(listOne: [Int], listTwo: [Int]) -> Relation {
    if listOne == listTwo {
        return .equal
    }
    if isSublist(sub: listOne, main: listTwo) {
        return .sublist
    }
    if isSublist(sub: listTwo, main: listOne) {
        return .superlist
    }
    return .unequal
}

func isSublist(sub: [Int], main: [Int]) -> Bool {
    if sub.isEmpty { return true }
    if sub.count > main.count { return false }

    for i in 0...(main.count - sub.count) {
        if Array(main[i..<(i + sub.count)]) == sub {
            return true
        }
    }
    return false
}
