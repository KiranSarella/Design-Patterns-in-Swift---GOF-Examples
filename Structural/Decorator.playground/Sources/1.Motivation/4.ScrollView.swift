import Foundation

public class ScrollDecorator: Decorator2 {
    
    
    public var visualComponent: VisualComponent
    
    public init(visualComponent: VisualComponent) {
        self.visualComponent = visualComponent
    }
    
    func applyScrollRect() {
        print(#function)
    }
    
    public func resetScrollPosition() {
        
        print(#function)
    }
    
}

extension ScrollDecorator {
    
    public func draw() {
        
        self.visualComponent.draw()
        
        applyScrollRect()
    }
}
