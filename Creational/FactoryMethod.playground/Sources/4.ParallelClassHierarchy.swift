import Foundation

/// Consequences
/// Connects parallel class hierarchies.
///
/// 

public protocol Figure {
    // factory method
    func createManipulator() -> Manipulator
}

public class LineFigure: Figure {
 
    public init() { }
    
    // overriding factory method
    public func createManipulator() -> Manipulator {
        return LineManipulator()
    }
}

public class TextFigure: Figure {
 
    public init() { }
    
    // overriding factory method
    public func createManipulator() -> Manipulator {
        return TextManipulator()
    }
}


public protocol Manipulator {
    
    func downClick()
    func drag()
    func upClick()
}

public class LineManipulator: Manipulator {
    
    public init() { }
    
    public func downClick() {
        print("Line", #function)
    }
    
    public func drag() {
        print("Line", #function)
    }
    
    public func upClick() {
        print("Text", #function)
    }
}

public class TextManipulator: Manipulator {
    
    public init() { }
    
    public func downClick() {
        print("Text", #function)
    }
    
    public func drag() {
        print("Text", #function)
    }
    
    public func upClick() {
        print("Text", #function)
    }
}

