import Foundation

public class XWindowView {
    
    public init() { }
    
    func xDrawString() {
        print(#fileID, #function)
    }
    
    func xDrawLine() {
        print(#fileID, #function)
    }
   
}

extension XWindowView: XWindowImp {
    public func devDrawText() {
        xDrawString()
    }
    
    public func devDrawLine() {
        xDrawLine()
    }
}

