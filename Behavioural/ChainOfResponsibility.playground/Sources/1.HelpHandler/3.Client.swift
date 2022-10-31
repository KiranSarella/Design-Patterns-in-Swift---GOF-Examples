import Foundation

let  PRINT_TOPIC: Topic = 1
let  PAPER_ORIENTATION_TOPIC: Topic = 2
let  APPLICATION_TOPIC: Topic = 3


public class Client1 {
    
    public init() { }
    
    public func case1() {
        print(#function)

        var application = Application(topic: APPLICATION_TOPIC)
        var dialog = Dialog(helpHandler: application, topic: PRINT_TOPIC)
        var button = Button(widget: dialog, topic: PAPER_ORIENTATION_TOPIC)
        
        button.handleHelp()
    }
    
    public func case2() {
        print(#function)
        
        var application = Application(topic: APPLICATION_TOPIC)
        var dialog = Dialog(helpHandler: application, topic: PRINT_TOPIC)
        var button = Button(widget: dialog, topic: NO_HELP_TOPIC)
        
        button.handleHelp()
    }
    
    
    public func case3() {
        print(#function)
        
        var application = Application(topic: APPLICATION_TOPIC)
        var dialog = Dialog(helpHandler: application)
        var button = Button(widget: dialog)
        
        button.handleHelp()
    }
    
}
