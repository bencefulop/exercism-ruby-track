//Solution goes in Sources
class Year {
    var isLeapYear: Bool = false
    
    init(calendarYear: Int) {
        isItLeapYear(calendarYear)
    }

    func isItLeapYear(_ year:Int) {
        if year.isMultiple(of: 4) {
            if year.isMultiple(of: 100) {
                if year.isMultiple(of: 400) {
                    self.isLeapYear = true
                }
                return
            }
            self.isLeapYear = true
        }
    }
}
