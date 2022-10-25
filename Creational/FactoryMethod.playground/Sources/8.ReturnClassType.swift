import Foundation

/// Language-specificvariantsandissues.
/// Smalltalk programs often use a method that returns the class of the object to be instantiated.
///


public protocol Application2 {
    
    // https://medium.com/@valsamiselmaliotis/initialize-class-from-type-in-swift-c1aa1ccbb249
    
    // factory method - returns class type
    func documentClass() -> Document2.Type
}

public protocol Document2 {
    init()
    func whoAmI()
}

public class DrawApp: Application2 {
    
    public init() { }
    
    public class DrawingDoc: Document2 {
        
        required public init() { }
        
        public func whoAmI() {
            print("Draw doc")
        }
    }
    
    // proividing implementation for factory method
    public func documentClass() -> Document2.Type {
        return DrawingDoc.self
    }
}

public class GraphApp: Application2 {
    
    public init() { }
    
    public class GraphDoc: Document2 {
        
        required public init() { }
        
        public func whoAmI() {
            print("Graph doc")
        }
    }
    
    // proividing implementation for factory method
    public func documentClass() -> Document2.Type {
        return GraphDoc.self
    }
}
