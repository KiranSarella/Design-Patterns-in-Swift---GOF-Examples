import Foundation


/*
 
 For simple commands that aren't undoable and don't require arguments, we can use a **class template** to parameterize the command's receiver. We'll define a template subclass SimpleCommand for such commands. SimpleCommand is parameterized by the Receiver type and maintains a binding between a receiver object and an action stored as a pointer to a member function.
 
 */


public class SimpleCommand: Command {
    
    var receiver: Receiver
    var action:Action
    
    public init(receiver: Receiver, action: Action) {
        
        self.receiver = receiver
        self.action = action
    }
    
    public func execute() {
        
        receiver.action(action: action)
    }
    
    
    
}


public class Receiver {
    
    public init() { }
    
    public func action(action: Action) {
        
    }
}

public class Action {
    
    
}
