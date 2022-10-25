import Foundation


public protocol Decorator2: VisualComponent {
    var visualComponent: VisualComponent { get set }
}

extension Decorator2 {
    
    public func draw() {
        visualComponent.draw()
    }
    
    public func resize() {
        visualComponent.resize()
    }
}
