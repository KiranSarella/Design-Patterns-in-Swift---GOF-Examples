import Foundation

public class Widget: HelpHandler {

    public var successor: HelpHandler?
    
    public var topic: Topic
    
    public init(parent: HelpHandler?, topic: Topic) {
        self.topic = topic
        self.successor = parent
    }
    
    public func handleHelp() {
        
        // forward to next
        (successor as? Widget)?.handleHelp()
    }
    
}




