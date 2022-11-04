import Foundation


/*
 
 Composite
 
 Stores child components. Implements child-related operations
 
 */

public struct Picture: Graphic {
    
    public var graphics: [Graphic]? = [Graphic]()
    
    
    public var id = UUID()
    
    let name = "Picture"
    
    public init() { }
    
    public func draw(level: Int = 0) {
        var spaces = ""
        for _ in 0...level {
            spaces += "---"
        }
        print(spaces, name, #function)
        for g in graphics! {
            g.draw(level: level + 1)
        }
    }
    
    // implment own child-related operations, if default is not appropriate
    /* .. */
}
