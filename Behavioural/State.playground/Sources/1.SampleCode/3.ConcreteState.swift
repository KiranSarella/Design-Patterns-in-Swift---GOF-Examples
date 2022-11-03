import Foundation

public class TCPEstablished: TCPState {

    let name = "TCPEstablished"
    
    static let shared = TCPEstablished()
    
    public init() {
        print(name, #function)
    }
    
    public func transmit(_ connection: inout TCPConnection, stream: inout TCPOctetStream) {
        print(name, #function)
        
        connection.processOctet(stream: stream)
    }
    
    public func close(_ connection: inout TCPConnection) {
        print(name, #function)
        
        print(name, "send FIN, receive ACK of FIN")
        var listenState: TCPState = TCPListen.shared
        changeState(&connection, state: &listenState)
    }
    
}

public class TCPListen: TCPState {
    
    let name = "TCPListen"
    
    static let shared = TCPListen()
    
    public init() {
        print(name, #function)
    }
    
    public func send(_ connection: inout TCPConnection) {
        print(name, #function)
        
        print(name, "send SYN, receive SYN, ACK, etc.")
        var establishedState: TCPState = TCPEstablished.shared
        changeState(&connection, state: &establishedState)
    }
}

public class TCPClosed: TCPState {
    
    let name = "TCPClosed"
    
    static let shared = TCPClosed()
    
    public init() {
        print(name, #function)
    }
    
    public func activeOpen(_ connection: inout TCPConnection) {
        print(name, #function)
        
        print(name, "send SYN, receive SYN, ACK, etc.")
        var establishedState: TCPState = TCPEstablished.shared
        changeState(&connection, state: &establishedState)
    }
    
    public func passiveOpen(_ connection: inout TCPConnection) {
        print(name, #function)
        
        var listendState: TCPState = TCPListen.shared
        changeState(&connection, state: &listendState)
    }
}



