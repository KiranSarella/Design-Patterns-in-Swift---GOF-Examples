import Foundation

public protocol Component {
    
    func operation()
}


public class ConcreteComponent: Component {
    
    let name = "ConcreteComponent"
    
    public init() { }
    
    public func operation() {
        print(name, #function)
    }
}


public protocol Decorator: Component {
    
    var component: Component { get }
}

extension Decorator {
    public func operation() {
        component.operation()
    }
}

public class ConcreteDecoratorA: Decorator {
    
    let name = "ConcreteDecoratorA"
    
    public var component: Component
    
    var addedState: String = "decorator A"
    
    public init(component: Component) {
        self.component = component
    }
    
    public func operation() {
        print(name, #function)
        // ..before
        component.operation()
        // ..after
    }
}

public class ConcreateDecoratorB: Decorator {
    
    public var component: Component
    
    public init(component: Component) {
        self.component = component
    }
    
    public func operation() {
        
        // ..before
        component.operation()
        // ..after
        addedBehavior()
    }
    
    func addedBehavior() {
        
        
    }
}
