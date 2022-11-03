import Foundation

public protocol TCPState {
    
    
    func transmit(_ connection: inout TCPConnection, stream: inout TCPOctetStream)
    func activeOpen(_ connection: inout TCPConnection)
    func passiveOpen(_ connection: inout TCPConnection)
    func close(_ connection: inout TCPConnection)
    func synchronize(_ connection: inout TCPConnection)
    
    func acknowledge(_ connection: inout TCPConnection)
    func send(_ connection: inout TCPConnection)
    
    
}



extension TCPState {
    
    func changeState(_ connection: inout TCPConnection, state: inout TCPState) {
        
        connection.changeState(newState: &state)
    }
}

// TCPState implements default behavior for all requestsdelegated to it.
extension TCPState {
    
    public func transmit(_ connection: inout TCPConnection, stream: inout TCPOctetStream) {
            
    }
    
    public func activeOpen(_ connection: inout TCPConnection) {
        
    }
    
    public func passiveOpen(_ connection: inout TCPConnection) {
        
    }
    
    public func close(_ connection: inout TCPConnection) {
        
    }
    
    public func synchronize(_ connection: inout TCPConnection) {
        
    }
    
    public func acknowledge(_ connection: inout TCPConnection) {
        
    }
    
    public func send(_ connection: inout TCPConnection) {
        
    }
    
}
