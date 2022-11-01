import Foundation



public class Document {
    
    var name: String
    
    public init(name: String) {
        self.name = name
    }
    
    public func open() {
        
        print("Receiver::", "Document", #function, name)
    }
    
    public func paste() {
        
        print("Receiver::", "Document", #function, name)
    }
}
