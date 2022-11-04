import Foundation

public protocol Node {
    
    // existing operations
    
    // adding function to support visitor
    func accept(visitor: NodeVisitor)
}
