import Foundation

public class Proxy {
    
    var realSubject: RealSubject?
    
    public init() { }
}

extension Proxy: Subject {
    
    public func reqeust() {
        
        if realSubject == nil {
            // create real object
            realSubject = RealSubject()
        }
        
        realSubject!.reqeust()
    }
}
