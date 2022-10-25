import Foundation

public class ProgramNodeBuilder {
    
    public init() { }
    
    public func getRootNode() -> ProgramNode {
        return TraverseNode()
    }
}




public protocol ProgramNode {
    // program node manipulation
    func getSourcePosition(line: Int, Index: Int)
    
    // child manipulation
    func add(programNode: ProgramNode)
    func remove(programNode: ProgramNode)
    
    
    func traverse(codeGenerator: CodeGenerator)
}

extension ProgramNode {
    
    public func getSourcePosition(line: Int, Index: Int) {
        
    }
    
    public func add(programNode: ProgramNode) {
        
    }
    
    public func remove(programNode: ProgramNode) {
        
        
    }
    
    public func traverse(codeGenerator: CodeGenerator) {
        
        
    }
}

public class TraverseNode: ProgramNode {
    
    public init() { }
    
}

public class StatementNode: ProgramNode {
    
    public init() { }
    
}

public class ExpressionNode: ProgramNode {
    
    public init() { }
    
    public func traverse(codeGenerator: CodeGenerator) {
        /*
         cg.Visit(this);
         ListIterator i(_children);
         for (i.First(); !i.IsDone(); i.Next()) {
         i.CurrentItem()->Traverse(cg);
         }
         */
    }
    
}
