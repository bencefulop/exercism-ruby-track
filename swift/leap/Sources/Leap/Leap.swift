//Solution goes in Sources
struct Year {
    var isLeapYear: Bool = false
    
    init(calendarYear: Int) {
        self.isLeapYear = calendarYear.isMultiple(of: 4) && ((calendarYear.isMultiple(of: 400) && calendarYear.isMultiple(of: 100)) || !calendarYear.isMultiple(of: 100))
    }
}
