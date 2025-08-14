import Foundation

enum ResistorColor : Int, CaseIterable {
  case black = 0
  case brown = 1
  case red = 2
  case orange = 3
  case yellow = 4
  case green = 5
  case blue = 6
  case violet = 7
  case grey = 8
  case white = 9

  static var colors: [String] {
    return ResistorColor.allCases.map { "\($0)" }
  }

  static func colorCode(for color: String) -> Int? {
    return ResistorColor.allCases.first { "\($0)" == color.lowercased() }?.rawValue
  }
}