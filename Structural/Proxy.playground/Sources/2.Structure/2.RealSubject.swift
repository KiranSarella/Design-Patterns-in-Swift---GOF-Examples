import Foundation

public class RealSubject {
    
    public init() { }
    
}

extension RealSubject: Subject {
    
    public func reqeust() {
        print(String(describing: type(of: self)), #function)
    }
}
