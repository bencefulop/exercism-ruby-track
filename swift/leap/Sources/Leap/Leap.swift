//Solution goes in Sources
class Year {
    var isLeapYear: Bool = false
    
    init(calendarYear: Int) {
        isItLeapYear(calendarYear)
    }
    
    func isItLeapYear(_ year:Int) {
        self.isLeapYear = year.isMultiple(of: 4) && ((year.isMultiple(of: 400) && year.isMultiple(of: 100)) || !year.isMultiple(of: 100))
    }
}
