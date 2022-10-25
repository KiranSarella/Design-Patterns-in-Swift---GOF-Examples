import Foundation

// a constraint-solving toolkit
public class QOCA {
    
    public var constraints = [Constraint]()
    
    public init() { }
    
}


public protocol Constraint {
    
}

public class QOCAConstraint: Constraint {
    public init() { }
}

