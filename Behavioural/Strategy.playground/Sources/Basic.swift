import Foundation

// using strategy (context)

/*
 // inputs to strategy
 A context may pass all data required by the algorithm to the strategy when the algorithm is called.
 Alternatively, the context can pass itself as an argument to Strategy operations.
 
 // output from strategy
 That lets the strategy call back on the context as required.
 */


// this object will use a strategy to complete its functionality.
public class Composition {
    
    private var compositor: Compositor
    
    public init(compositor: Compositor) {
        self.compositor = compositor
    }
    
    var lineBreaks: Int = 0
    var lineCount: Int = 0
    
    
    public func repair() {
     
        // ..
        
        // taking the data to the strategy
        let breakCount = compositor.compose(natural: "some", stretch: "some", shrink: "some", componentCount: 5, lineWidth: 50, breaks: [10, 20])
        
        // ..
        print(breakCount)
    }
}

// define strategy interface
public protocol Compositor {
    
    func compose(natural: Any, stretch: Any, shrink: Any, componentCount: Int, lineWidth: Int, breaks: [Int]) -> Int
}

// implement mulitple strategies

// These classes don't use all the information passed in compose.


// concrete strategies

public class SimpleCompositor: Compositor {
    
    public init() {}
    
    public func compose(natural: Any, stretch: Any, shrink: Any, componentCount: Int, lineWidth: Int, breaks: [Int]) -> Int {
     
        // ..
        return 100
    }
}

public class TeXCompositor: Compositor {
    
    public init() {}
    
    public func compose(natural: Any, stretch: Any, shrink: Any, componentCount: Int, lineWidth: Int, breaks: [Int]) -> Int {
        // ..
        
        return 120
    }
}

public class ArrayCompositor: Compositor {
    
    let interval: Int

    public init(interval: Int) {
        self.interval = interval
    }
    
    public func compose(natural: Any, stretch: Any, shrink: Any, componentCount: Int, lineWidth: Int, breaks: [Int]) -> Int {
        // ..
        
        return 85
    }
}

