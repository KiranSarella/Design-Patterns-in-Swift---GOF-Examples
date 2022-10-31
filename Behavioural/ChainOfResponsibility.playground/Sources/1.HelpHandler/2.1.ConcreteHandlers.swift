import Foundation


public class Button: Widget {
    
    public init(widget: Widget?, topic: Topic = NO_HELP_TOPIC) {
        super.init(parent: widget, topic: topic)
    }
    
    public override func handleHelp() {
        if hasHelp() {
            print("Button Help Description")
        } else {
            print("Button: Pass")
            successor?.handleHelp()
        }
    }
}



public class Dialog: Widget {
    
    // the init is HelpHandler, not Widget type
    public init(helpHandler: HelpHandler?, topic: Topic = NO_HELP_TOPIC) {
        super.init(parent: helpHandler, topic: topic)
    }
    
    public override func handleHelp() {
        if hasHelp() {
            print("Dialog Help Description")
        } else {
            print("Dialog: Pass")
            // default operation
            successor?.handleHelp()
        }
    }
}
