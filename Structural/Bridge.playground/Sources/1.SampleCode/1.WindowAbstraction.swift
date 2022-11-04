import Foundation

public protocol Window2 {
    
    // requests handled by window
    func drawContents()
    func open()
    func close()
    func iconify()
    func deiconify()
    
    // requests forwarded to implementation
    func setOrigin(at: Point)
    func setExtent(at: Point)
    func raise()
    func lower()
    
    func drawLine(fromm: Point, to: Point)
    func drawRect(from: Point, to: Point)
    func drawPolygon(points: [Point], length: Int)
    func drawText(text: String, at: Point)
    
}

extension Window2 {
    
    public func drawContents() {
        
    }
    
    public func open() {
            
    }
    
    public func close() {
        
    }
    
    public func iconify() {
        
    }
    
    public func deiconify() {
        
    }
    
    public func setOrigin(at: Point) {
        
    }
    
    public func setExtent(at: Point) {
        
    }
    
    public func raise() {
        
    }
    
    public func lower() {
        
    }
}

public struct Point {
    
    public init() { }
}

// MARK: Application Window
public protocol ApplicationWindow: Window2 {

}

extension ApplicationWindow {
    
    public func drawContents() {
        // application window logic
    }
}

public protocol IconWindow2: Window2 {
    
}

// MARK: Icon Window
extension IconWindow2 {
    
    public func drawContents() {
        // icon window logic
        
    }
    
}


/*
 
 Many other variations of Window are possible.
 A TransientWindow may need to communicate with the window that created it during the dialog; hence it keeps a reference to that window.
 A PaletteWindow always floats above other windows.
 An IconDockWindow holds IconWindows and arranges them neatly.
 */
