import Foundation

public protocol NodeVisitor {
    
    func visitAssignment(node: AssignmentNode)
    func visitVariableRef(node: VariableRefNode)
}

extension NodeVisitor {
    
    public func visitAssignment(node: AssignmentNode) {
        print("NodeVisitor", #function)
    }
    
    public func visitVariableRef(node: VariableRefNode) {
        print("NodeVisitor", #function)
    }
    
}

