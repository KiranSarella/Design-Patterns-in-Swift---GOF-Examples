import Foundation

public class TypeCheckingVisitor: NodeVisitor {
    let name = "TypeCheckingVisitor"
    
    public init() { }
    
    public func visitAssignment(node: AssignmentNode) {
        
        print(name, #function)
        
    }
    
    public func visitVariableRef(node: VariableRefNode) {
        
        print(name, #function)
        
    }
    
}
