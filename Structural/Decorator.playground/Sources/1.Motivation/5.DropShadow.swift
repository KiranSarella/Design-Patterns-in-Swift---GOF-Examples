import Foundation

public class DropShadow: Decorator2 {
    
    public var visualComponent: VisualComponent
    
    var shadow: Float
    
    public init(visualComponent: VisualComponent, shadow: Float) {
        self.visualComponent = visualComponent
        self.shadow = shadow
    }
}

