import Foundation

public class MacroCommand: Command {
    
    var commandsList = [Command]()
    
    public init() { }
    
    public func add(command: Command) {
        
    }
    
    public func remove(command: Command) {
        
        
    }
    
}

extension MacroCommand {
    
    public func execute() {
        
        for cmd in commandsList {
            cmd.execute()
        }
    }
}


