import Foundation

// adaptee - needed object
public protocol MyTextView {
    func getOrigin()
    func getExtent()
}

// many concrete textview objects
public class MarkdownTextView: MyTextView {
    
    let name = "markdown TextView"
    
    public init() {}
    
    public func getOrigin() {
        print(name, #function)
    }
    
    public func getExtent() {
        print(name, #function)
    }
}
