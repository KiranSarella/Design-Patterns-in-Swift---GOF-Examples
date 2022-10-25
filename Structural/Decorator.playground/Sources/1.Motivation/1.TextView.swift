import Foundation

public class Textview: VisualComponent {
    
    var name = "Textview"
    
    public init() { }
    
    public func draw() {
        print(name, #function)
    }
    
    public func resize() {
        print(name, #function)
    }
    
}
