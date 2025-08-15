import Foundation

enum BinarySearchError: Error {
    case valueNotFound
}

struct BinarySearch {
    let numbers: [Int]

    init(_ numbers: [Int]) {
        self.numbers = numbers
    }

    func searchFor(_ value: Int) throws -> Int {
        var left = 0
        var right = numbers.count - 1

        while left <= right {
            let mid = left + (right - left) / 2
            if numbers[mid] == value {
                return mid
            } else if numbers[mid] < value {
                left = mid + 1
            } else {
                right = mid - 1
            }
        }

        throw BinarySearchError.valueNotFound
    }
}
