import Foundation

public class ClientWindow2 {
  
    private var windowImp: WindowImp2?
    
    // used singleton and abstract factory
    func getWindowImp() -> WindowImp2 {
        
        if windowImp == nil {
            windowImp = WindowSystemFactory().makeWindowImp(client: "windows")
        }
        
        return windowImp!
    }
    
    public init() { }
}

extension ClientWindow2: Window2 {
    
    
    public func drawLine(fromm: Point, to: Point) {
            
        let imp = getWindowImp()
        
        imp.deviceRect(x1: 0, y1: 0, x2: 100, y2: 100)
    }
    
    public func drawRect(from: Point, to: Point) {
        
    }
    
    public func drawPolygon(points: [Point], length: Int) {
        
    }
    
    public func drawText(text: String, at: Point) {
        
    }
    
}
