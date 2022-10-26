import Foundation

public struct Extent {
    var width: Int
    var height: Int
}

public protocol Graphic {
    
    func draw()
    func getExtent() -> Extent
    func store()
    func load()
}

extension Graphic {
    
    public func draw() {
        
    }
    
    public func getExtent() -> Extent {
        Extent(width: 0, height: 0)
    }
    
    public func store() {
        
    }
    
    public func load() {
        
    }
}

