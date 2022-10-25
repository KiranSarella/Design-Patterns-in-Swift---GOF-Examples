import Foundation

// class adapter - multiple inheritance (in our case its protocol inheritance)
// confirming to protocol, crearing own textview
public class TextShape2: MyTextView {
    
    let name = "textshape2"
    
    public init() {
        
    }
    
    public func isEmpty() -> Bool {
        return false
    }
    
    public func getOrigin() {
        print(name, #function)
    }
    
    public func getExtent() {
        print(name, #function)
    }
    
}

extension TextShape2: Shape {
    
    public func boundingBox() {
        
        print(name, #function)
        
        self.getOrigin()
    }
    
    public func createManipulator() {
        
        print(name, #function)
        
        self.getExtent()
    }
}


// subclass inheritance
public class TextShape3: MarkdownTextView {
    
    public func isEmpty() -> Bool {
        return false
    }
}

extension TextShape3: Shape {
    
    public func boundingBox() {
        
        print(name, #function)
        
        self.getOrigin()
    }
    
    public func createManipulator() {
        
        print(name, #function)
        
        self.getExtent()
    }
}
