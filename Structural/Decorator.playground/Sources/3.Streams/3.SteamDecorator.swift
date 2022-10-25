import Foundation

public protocol StreamDecorator: MyStream {
    
    var component: MyStream { get }
}

extension StreamDecorator {
    public func handleBufferFull() {
        component.handleBufferFull()
    }
}
