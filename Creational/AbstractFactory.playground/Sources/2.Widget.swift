import Foundation

public protocol Window {
    
    func close()
    func minimize()
}

public protocol ScrollBar {
    func scrollToTop()
}

public protocol WidgetFactory {
    
    func createWindow() -> Window
    func createScrollBar() -> ScrollBar
}


public class GUIPackage {
    
    public static func getWidgetFactory(os: String) -> WidgetFactory? {
        
        if os == "mac" {
            return MacOSWidgetFactory()
        } else if os == "mint" {
            return MintOSWidgetFactory()
        }
        
        return nil
    }
}



public class MacOSWidgetFactory: WidgetFactory {
    
    class MacWindow: Window {
        
        func close() {
            
        }
        
        func minimize() {
            print("minimizing mac window")
        }
    }
    
    class MacScrollBar: ScrollBar {
        func scrollToTop() {
            
        }
    }
    
    public init() { }
    
    public func createWindow() -> Window {
        return MacWindow()
    }
    
    public func createScrollBar() -> ScrollBar {
        return MacScrollBar()
    }
}

public class MintOSWidgetFactory: WidgetFactory {
    
    class MintWindow: Window {
        func close() {
            
        }
        
        func minimize() {
            
        }
    }
    
    class MintScrollBar: ScrollBar {
        func scrollToTop() {
            
        }
    }
    
    public init() { }
    
    public func createWindow() -> Window {
        return MintWindow()
    }
    
    public func createScrollBar() -> ScrollBar {
        return MintScrollBar()
    }
}



