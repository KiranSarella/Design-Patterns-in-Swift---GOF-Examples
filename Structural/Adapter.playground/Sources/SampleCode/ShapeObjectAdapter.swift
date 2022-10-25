import Foundation


// we need textview also have to be a shape type.
// The class TextShape is an adapter between these different interfaces.

// object adapter - object composition
public class TextShape1 {
    // declaring as type
    private var textView: MyTextView
    
    let name = "textshape1"
    
    public init() {
        
        textView = MarkdownTextView()
    }
    
    public func isEmpty() -> Bool {
        return false
    }
}

extension TextShape1: Shape {
    
    public func boundingBox() {
        
        print(name, #function)
        
        textView.getOrigin()
    }
    
    public func createManipulator() {
        
        print(name, #function)
        
        textView.getExtent()
    }
}

