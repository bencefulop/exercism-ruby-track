//Solution goes in Sources
class HelloWorld {
    static func hello(_ name: String? = nil) -> String {
        name == nil ? "Hello, World!" : "Hello, \(name!)!"
    }
}
