import Foundation

// Adaptee
public class DirectoryHierarchy {
    
    public var root: Directory
    
    public init(root: Directory) {
        self.root = root
    }
    
    public func getSubdirectories(dir: Directory) -> [Directory] {
        return dir.subDirectories
    }
    
}


public class Directory {
    
    public var name: String
    public var subDirectories = [Directory]()
    
    public init(name: String) {
        self.name = name
    }
}
