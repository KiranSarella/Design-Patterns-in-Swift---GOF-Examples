import Foundation


/*
 
 Leaf (Rectangle, Line, Text, etc.)
 
 A leaf has no children. So, no need to implement child-related operations.
 
 Only shared operations are implemented.
 
 */

public struct Line: Graphic {
  
    // Leaf object will not create childs, so ignore this variable
    public var graphics: [Graphic]?
    
    public var id: UUID = UUID()
    
    let name = "Line"
    
    public init() { }
    
    public func draw(level: Int) {
        var spaces = ""
        for _ in 0...level {
            spaces += "---"
        }
        print(spaces, name, #function)
    }
}

public struct Rectangle: Graphic {
    
    public var graphics: [Graphic]?
    
    public var id = UUID()
    
    let name = "Rectangle"
    
    public init() { }
    
    public func draw(level: Int) {
        var spaces = ""
        for _ in 0...level {
            spaces += "---"
        }
        print(spaces, name, #function)
    }
}

public struct Text: Graphic {
    
    public var graphics: [Graphic]?
    
    public var id = UUID()
    
    let name = "Text"
    
    public init() { }
    
    public func draw(level: Int) {
        var spaces = ""
        for _ in 0...level {
            spaces += "---"
        }
        print(spaces, name, #function)
    }
}


