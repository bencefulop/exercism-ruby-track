//Solution goes in Sources
class Year {
    var calendarYear: Int
    var isLeapYear: Bool = false
    
    init(calendarYear: Int) {
        self.calendarYear = calendarYear
        isItLeapYear(self.calendarYear)
    }
    
    func isItLeapYear(_ year:Int) {
        if year % 4 == 0 {
            if year % 100 == 0 {
                if year % 400 == 0 {
                    self.isLeapYear = true
                }
                return
            }
            self.isLeapYear = true
        }
    }
}
