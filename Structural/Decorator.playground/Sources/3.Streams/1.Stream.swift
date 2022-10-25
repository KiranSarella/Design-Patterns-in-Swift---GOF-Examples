import Foundation

public protocol MyStream {
    
    func putInt()
    func putString()
    func handleBufferFull()
}

extension MyStream {
    
    public func putInt() {
        print(#function)
    }
    
    
    public func putString() {
        print(#function)
    }
    
    
    public func handleBufferFull() {
        print(#function)
    }
}
