//Solution goes in Sources

extension Array {
    func accumulate<T>(_ function: (Element) -> (T)) -> [T] {
        var array = [T]()
        for item in self {
            array.append(function(item))
        }
        return array
    }
}
