import Foundation

/// Once an Application subclass is instantiated, it can then instantiate application-specific Documents without knowing their class.
/// We call **CreateDocument** a factory method because it's responsible for "manufacturing" an object.

public protocol Application {
    
    // factory method
    func createDocument(_ name: String) -> Document   // should be oveeride by subclasses to provide specific creation of object.
    // supporting hooks
    var documents: [Document] { get set }
    var currentDocument: Document? { get set }
}

extension Application {
    // function that uses factory method
    public mutating func newDocument(name: String) {
        let doc = createDocument(name)
        documents.append(doc)
        currentDocument = doc
        doc.open()
    }
    
    public mutating func openDocument(name: String) {
        let doc = documents.first { $0.name == name }
        currentDocument = doc
        doc?.open()
    }
}

public protocol Document {
    
    var name: String { get set }
    
    // factory methods
    func open()
    func close()
    func save()
    func revert()
}


public class DrawingDocument: Document {
    
    public var name: String
    
    public init(name: String) {
        self.name = name
    }
    
    // implementing factory methods
    public func open() {
        print("opening \(name)")
    }
    
    public func close() {
        print("closing \(name)")
    }
    
    public func save() {
        print("saving \(name)")
    }
    
    public func revert() {
        
    }
}

public class DrawingApplication: Application {
    
    public var documents: [Document] = [Document]()
    
    public var currentDocument: Document?
    
    public init() { }
    
    // implementing factory method
    public func createDocument(_ name: String) -> Document {
        return DrawingDocument(name: name)
    }
}

