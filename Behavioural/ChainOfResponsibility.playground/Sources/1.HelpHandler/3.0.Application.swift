import Foundation

public class Application: HelpHandler {
    
    public var successor: HelpHandler?
    
    public var topic: Topic
    
    public init(topic: Topic) {
        self.topic = topic
    }
    
    public func handleHelp() {
        print("Appication: Help Description")
    }
}



