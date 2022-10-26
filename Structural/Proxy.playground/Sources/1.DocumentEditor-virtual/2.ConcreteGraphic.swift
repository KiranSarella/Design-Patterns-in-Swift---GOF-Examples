import Foundation



public class Image  {
    
    var imageImp: Data!
    var extent = Extent(width: 0, height: 0)
    
    
    public init() { }
   
    
    
}

extension Image: Graphic {
    
    public func draw() {
        print(String(describing: self), #function)
    }
    
    public func getExtent() -> Extent {
        print(String(describing: self), #function)
        return extent
    }
    
    public func store() {
        print(String(describing: self), #function)
    }
    
    public func load() {
        print(String(describing: self), #function)
        extent = Extent(width: 100, height: 140)
    }
}


