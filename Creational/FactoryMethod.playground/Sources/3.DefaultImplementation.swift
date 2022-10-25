import Foundation

// Creator may also define a default implementation of the factory method that returns a default ConcreteProduct object.


extension Application {
    
    // default implementation
    public func createDocument(_ name: String) -> Document {
        return UnknownDocument(name: name)
    }
}


public class UnknownDocument: Document {
    
    public var name: String
    
    public init(name: String) {
        self.name = name
    }
    
    // implementing factory methods
    public func open() {
        print("opening Unknown \(name)")
    }
    
    public func close() {
        print("closing Unknown \(name)")
    }
    
    public func save() {
        print("saving Unknown \(name)")
    }
    
    public func revert() {
        
    }
    
}


public class UnknownApplication: Application {
    
    public var documents: [Document] = [Document]()
    
    public var currentDocument: Document?
    
    public init() { }
    
    // implementing factory method
    // ..uses default implementation
}
