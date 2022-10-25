import Foundation

public protocol FileManager {
    
    func createDocument(_ name: String) -> File   // factory method -- should be oveeride by subclasses to provide specfic creation of object.
    var documents: [File] { get set }
    var currentDocument: File? { get set }
    var env: String { get set }
}

extension FileManager {
    
    public mutating func newDocument(name: String) {
        let doc = createDocument(name)
        documents.append(doc)
        currentDocument = doc
        doc.open(env: env)
    }
    
    public mutating func openDocument(name: String) {
        let doc = documents.first { $0.name == name }
        currentDocument = doc
        doc?.open(env: env)
    }
}

public protocol File {
    
    var name: String { get set }
    
    // paramaterized factory methods
    func open(env: String)
    // other factory methods
    func close()
    func save()
    func revert()
}


public class DefaultFile: File {
    
    public var name: String
    
    public init(name: String) {
        self.name = name
    }
    
    // implementing factory methods
    public func open(env: String) {
        if env == "local" {
            print("opening \(name) in sandbox")
        } else if env == "remote" {
            print("opening \(name) in icloud")
        } else {
            print("opening \(name) in 3rd party env - \(env)")
        }
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

public class DefaultFileManager: FileManager {
    
    public var documents: [File] = [File]()
    
    public var currentDocument: File?
    
    public var env: String = "local"
    
    public init() { }
    
    // implementing factory method
    public func createDocument(_ name: String) -> File {
        return DefaultFile(name: name)
    }
}

public class RemoteFileManager: FileManager {
    
    public var documents: [File] = [File]()
    
    public var currentDocument: File?
    
    public var env: String = "remote"
    
    public init() { }
    
    // implementing factory method
    public func createDocument(_ name: String) -> File {
        return DefaultFile(name: name)
    }
}

