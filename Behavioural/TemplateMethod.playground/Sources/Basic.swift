import Foundation

public protocol DynamicView {
    
    func display()      // template method
    func doDisplay()    // hook
}

extension DynamicView {
    
    // template method implemetaiton
    public func display() {
        setup()
        doDisplay()
        reset()
    }
    
    // internal methods
    func setup() {
        print("default - setup")
    }
    
    func reset() {
        print("default - reset")
    }
}

public struct ViewOne: DynamicView {
    
    public init() {}
    
    public func doDisplay() {
        print("ViewOne - doDisplay")
    }
    
//    public func display() {
//        print("my custom display")
//    }
}



