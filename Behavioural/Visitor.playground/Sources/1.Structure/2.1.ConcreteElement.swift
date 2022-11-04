import Foundation

public class AssignmentNode: Node {
    let name = "AssignmentNode"
    
    public init() { }
    
    // existing operations
    
    
    // implementing visitor support function in each subclass
    public func accept(visitor: NodeVisitor) {
        print(name, #function)
        
        visitor.visitAssignment(node: self)
    }
    
    
}

public class VariableRefNode: Node {
    let name = "VariableRefNode"
    
    
    public init() { }
    
    // existing operations
    
    
    // implementing visitor support function in each subclass
    public func accept(visitor: NodeVisitor) {
        print(name, #function)
        
        visitor.visitVariableRef(node: self)
    }
}


