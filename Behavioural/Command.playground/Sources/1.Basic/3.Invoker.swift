import Foundation


public class MenuItem {
    
    var command: Command!
    
    public init() {
        
    }
    
    public func setCommand(command: Command) {
        self.command = command
    }
    
    public func clicked() {
        print("Invoker:: ", #function)
        command.execute()
    }
}
