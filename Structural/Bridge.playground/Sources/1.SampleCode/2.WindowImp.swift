import Foundation

public protocol WindowImp2 {
    
    func impTop()
    func impButtom()
    func impSetExtent(point: Point)
    func impSetOrigin(point: Point)
    
    func deviceRect(x1: Int, y1: Int, x2: Int, y2: Int)
    func deviceText(string: String, point: Point)
    func deviceBitmap(img: String, point: Point)
    
    // lots more functions for drawing on windows...
}

extension WindowImp2 {
    
    // default implementations
    public func impTop() {
        
    }
    
    public func impButtom() {
        
    }
    
    public func impSetExtent(point: Point) {
        
    }
    
    public func impSetOrigin(point: Point) {
        
    }
    
}

