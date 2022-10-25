import Foundation


// client
public class DrawingEditor {
    
    var items = [Shape]()
    
    public init() {
        
        items = [
            Circle(),
            Rectangle(),
            TextShape1(),   // object adapter
            TextShape2(),   // class adapter - interface
            TextShape3()    // class adapter - confirming to subclass (gussing this is right way)
        ]
    }
    
    public func printEachShapeDetail() {
        for item in items {
            item.boundingBox()
            item.createManipulator()
        }
    }
}


// target
public protocol Shape {
    func boundingBox()
    func createManipulator()
}


// many exising shape objects
public class Circle: Shape {
    
    let name = "circle"
    
    public func boundingBox() {
        print(name, #function)
    }
    
    public func createManipulator() {
        print(name, #function)
    }
}

public class Rectangle: Shape {
    
    let name = "rectangle"
    
    public func boundingBox() {
        print(name, #function)
    }
    
    public func createManipulator() {
        print(name, #function)
    }
}


