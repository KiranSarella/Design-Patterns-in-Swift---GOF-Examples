import Foundation

// a graphical editor framework
public class Unidraw {
    
    public var states = [State]()
    
    public init() { }
    
}

public protocol State {
    
}


public class UniState: State {
    public init() { }
}
