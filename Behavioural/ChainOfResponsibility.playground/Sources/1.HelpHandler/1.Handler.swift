import Foundation


/*
 o defines an interface for handling requests.
 o (optional) implements the successor link.
 */

public typealias Topic = Int

public let  NO_HELP_TOPIC: Topic = -1

public protocol HelpHandler {
    
    var successor: HelpHandler? { get set }
    var topic: Topic { get set }
    
    func handleHelp()
    func hasHelp() -> Bool
}

extension HelpHandler {
    
    public func handleHelp() {
        
        // forward to next
        successor?.handleHelp()
    }
    
    public func hasHelp() -> Bool {
        return (topic == NO_HELP_TOPIC) ? false : true
    }
}
