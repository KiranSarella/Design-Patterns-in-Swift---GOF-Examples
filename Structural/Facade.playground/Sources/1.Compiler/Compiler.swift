import Foundation


/// Now we'll introduce a Compiler class, a facade that puts all these pieces together. 
public class Compiler {
    
    public init() { }
    
    public func compile(stream: BytecodeStream) {
        var scanner = Scanner()
        var builder = ProgramNodeBuilder()
        
        var parser = Parser()
        
        parser.parse(scanner: scanner, programNodeBuilder: builder)
        
        var codeGenerator = RISCCodeGenerator()
        
        var parseTree: ProgramNode = builder.getRootNode()
        parseTree.traverse(codeGenerator: codeGenerator)
        
    }
    
    
}
