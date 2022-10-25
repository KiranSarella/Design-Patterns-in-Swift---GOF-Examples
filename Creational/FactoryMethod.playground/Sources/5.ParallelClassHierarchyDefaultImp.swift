import Foundation

// Alternatively, the FigureD class may implement CreateManipulatorD to return a default ManipulatorD instance, and FigureD subclasses may simply inherit that default.
// The Figure classes that do so need no corresponding Manipulator subclass—hence the hierarchies are only partially parallel.
// 

public protocol FigureD {
    // factory method
    func createManipulatorD() -> ManipulatorD
}

extension FigureD {
    // default implentation of a factory method
    public func createManipulatorD() -> ManipulatorD {
        return DefaultManipulatorD()
    }
}

public class DefaultFigureD: FigureD {
    public init() { }
}


public protocol ManipulatorD {
    
    func downClick()
    func drag()
    func upClick()
}

extension ManipulatorD {
    
    public func downClick() {
        print("Default", #function)
    }
    
    public func drag() {
        print("Default", #function)
    }
    
    public func upClick() {
        print("Default", #function)
    }
}

public class DefaultManipulatorD: ManipulatorD {
    public init() {}
}

