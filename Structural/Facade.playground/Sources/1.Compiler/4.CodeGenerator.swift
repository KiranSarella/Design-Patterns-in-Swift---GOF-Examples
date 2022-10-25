import Foundation


/*
 The Traverse operation takes a CodeGenerator object. ProgramNode subclasses use this object to generate machine code in the form of Bytecode objects on a BytecodeStream. The class CodeGenerator is a visitor (see Visitor (366)).
 */

public protocol CodeGenerator {
    
    func visit(statementNode: StatementNode)
    func visit(expressionNode: ExpressionNode)
}

extension CodeGenerator {
    
    
    public func visit(statementNode: StatementNode) {
        
    }
    
    public func visit(expressionNode: ExpressionNode) {
        
    }
    
}

public class StackMachineCodeGenerator: CodeGenerator {
    public init() { }
}


public class RISCCodeGenerator: CodeGenerator {
    public init() { }
}
