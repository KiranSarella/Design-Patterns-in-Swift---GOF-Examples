import Foundation

public class TCPConnection {
    
    let name = "TCPConnection"
    
    private var state: TCPState!
    
    public init() {
        print(name, #function)
        
        state = TCPListen.shared
    }
    
    func changeState(newState s: inout TCPState) {
        print()
        print(name, #function)
        
        state = s
    }
    
    
    public func activeOpen() {
        print(name, #function)
        
        var this = self
        state.activeOpen(&this)
    }
    
    public func passiveOpen() {
        print(name, #function)
        
        var this = self
        state.passiveOpen(&this)
    }
    
    public func close() {
        print(name, #function)
        
        var this = self
        state.close(&this)
        
//        state = TCPClosed.shared
    }
    
    public func send() {
        print(name, #function)
        
        var this = self
        state.send(&this)
    }
    
    public func acknowledge() {
        print(name, #function)
        
        var this = self
        state.acknowledge(&this)
    }
    
    public func synchronize() {
        print(name, #function)
        
        var this = self
        state.synchronize(&this)
    }
    
    
    public func processOctet(stream: TCPOctetStream) {
        print(name, #function)
        
        
    }
    
    
}


public class TCPOctetStream {
    
    public init() { }
}

