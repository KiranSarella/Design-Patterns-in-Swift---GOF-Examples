import Foundation


public class BorderDecorator: Decorator2 {
    
    public var visualComponent: VisualComponent
    
    var borderWidth: Int
    
    public init(visualComponent: VisualComponent, borderWidth: Int) {
        self.visualComponent = visualComponent
        self.borderWidth = borderWidth
    }
    
    private func drawWidth() {
        print(#function)
    }
    
}

extension BorderDecorator {
    
    public func draw() {
        visualComponent.draw()
        drawWidth()
    }
}
