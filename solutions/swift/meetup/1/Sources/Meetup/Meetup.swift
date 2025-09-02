import Foundation

class Meetup {
    var year: Int
    var month: Int
    var week: String
    var weekday: String
    let calendar = Calendar.current
    
    init(year: Int, month: Int, week: String, weekday: String) {
        self.year = year
        self.month = month
        self.week = week
        self.weekday = weekday
    }
    
    var description: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        
        guard let firstDayOfMonth = calendar.date(from: DateComponents(year: year, month: month, day: 1)),
              let rangeOfDays = calendar.range(of: .day, in: .month, for: firstDayOfMonth)
        else { return "" }
        
        let weekdaySymbols = calendar.weekdaySymbols
        let targetWeekdayIndex = weekdaySymbols.firstIndex(of: weekday) ?? 0
        
        var exactDay = 1
        let firstWeekdayIndex = calendar.component(.weekday, from: firstDayOfMonth) - 1
        
        for offset in 0..<7 {
            if (firstWeekdayIndex + offset) % 7 == targetWeekdayIndex {
                exactDay += offset
                break
            }
        }
        
        var resultDay = exactDay
        
        switch week.lowercased() {
        case "first":
            resultDay = exactDay
        case "second":
            resultDay = exactDay + 7
        case "third":
            resultDay = exactDay + 14
        case "fourth":
            resultDay = exactDay + 21
        case "teenth":
            while resultDay < 13 { resultDay += 7 }
        case "last":
            while resultDay + 7 <= rangeOfDays.count { resultDay += 7 }
        default:
            return ""
        }
        
        guard let resultDate = calendar.date(from: DateComponents(year: year, month: month, day: resultDay)) else {
            return ""
        }
        
        return formatter.string(from: resultDate)
    }
}
