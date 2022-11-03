import Foundation

public class ConnectionHelper {
    
    var connection = TCPConnection()
    
    public init() {
        
        
    }
    
    public func testConnectionSteps() {
        
        connection.send()
//        connection.activeOpen()
        connection.close()
        connection.passiveOpen()
        
    }
}
