import Foundation

// bridge between (Window and WindowImp)
public class ClientWindow {
    
    private var windowImp: WindowImp
    
    public init(imp: WindowImp) {
        self.windowImp = imp
    }
}

extension ClientWindow: Window {
    
    
    public func drawText() {
        
    }
    
    public func drawRect() {
        windowImp.devDrawLine()
        windowImp.devDrawLine()
        windowImp.devDrawLine()
        windowImp.devDrawLine()
    }
}
