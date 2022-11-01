import Foundation


// Application acts as client and receiver (for application related commands)
public class Application {
    
    // menu
    var openItem = MenuItem()
    var pasteItem = MenuItem()
    
    var currentDocument: Document?
    
    public init() { }
    
    // action for open document
    func add(document: Document) {
        print("Receiver::", #function, document.name)
        currentDocument = document
    }
    
    public func clickedOnOpenMenuItem() {
        
        // 1. The client creates a ConcreteCommand object and specifies its receiver.
        let openCommand = OpenCommand(receiver: self)
        
        // 2. An Invoker object stores the ConcreteCommand object.
        openItem.setCommand(command: openCommand)
        
        // 3. The invoker issues a request by calling Execute on the command. When commands are undoable, ConcreteCommand stores state for undoing the command prior to invoking Execute.
        openItem.clicked()
    }

    
    public func clickedOnPasteMenuItem() {
        
        let pasteCommand = PasteCommand(receiver: currentDocument!)
        pasteItem.setCommand(command: pasteCommand)
        
        pasteItem.clicked()
    }
}

