import Foundation

public protocol Button {
    
    func press()
    func disable()
}

public protocol Switch {
    func scrollToTop()
}

public protocol UIFactory {
    
    static var shared: UIFactory { get }
    
    func createButton() -> Button
    func createSwitch() -> Switch
}


public class UI {
    
    public static func getUIFactory(os: String) -> UIFactory? {
        
        if os == "mac" {
            return MacOSUIFactory.shared
        } else if os == "mint" {
            return MintOSUIFactory.shared
        }
        
        return nil
    }
}



public class MacOSUIFactory: UIFactory {
    
    class MacButton: Button {
        
        func press() {
            print(#function)
        }
        
        func disable() {
            print(#function)
        }
    }
    
    class MacSwitch: Switch {
        func scrollToTop() {
            
        }
    }
    
    public static let shared: UIFactory = MacOSUIFactory()
    
    private init() { }
    
    public func createButton() -> Button {
        return MacButton()
    }
    
    public func createSwitch() -> Switch {
        return MacSwitch()
    }
}

public class MintOSUIFactory: UIFactory {
    
    class MintButton: Button {
        func press() {
            print(#function)
        }
        
        func disable() {
            print(#function)
        }
    }
    
    class MintSwitch: Switch {
        func scrollToTop() {
            
        }
    }
    
    public static var shared: UIFactory = MintOSUIFactory()
    
    private init() { }
    
    public func createButton() -> Button {
        return MintButton()
    }
    
    public func createSwitch() -> Switch {
        return MintSwitch()
    }
}



