import Foundation

/// This technique is only applicable if
/// (1) the Strategy can be selected at compile-time, and
/// (2) it does not have to be changed at run-time.
/// In this case, the class to be configured (e.g., Context) is defined as a template class that has a Strategy class as a parameter:
///
/// With templates,
/// there's no need to define an abstract class that defines the interface to the Strategy.
/// Using Strategy as a template parameter also lets you bind a Strategy to its Context statically, which can increase efficiency.



public class Context<Strategy: Compositor> {
    
    private var strategy: Strategy
    
    public init(strategy: Strategy) {
        self.strategy = strategy
    }
    
    public func operation() {
        
        // ..
        let lineBreaks = strategy.compose(natural: "", stretch: "", shrink: "", componentCount: 10, lineWidth: 200, breaks: [200])
        print(lineBreaks)
        // ..
    }
}


