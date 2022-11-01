import Foundation

public class OpenCommand: Command {
    
    // receiver
    var application: Application
    
    var response: String?
    
    public init(receiver: Application) {
        self.application = receiver
    }
    
    public func askUser() -> String? {
        // UI window will get name
        print("Open window appeared; Please select the document..")
        return "readmd.md"
    }
    
    public func execute() {
        
        print("Command:: ", #function)
        
        let name = askUser()
        if let name = name {
            let document = Document(name: name)
            // perform receiver1:Application action
            application.add(document: document)
            // perform receiver2:Document action
            document.open()
        }
        
    }
}

public class PasteCommand: Command {
    
    var document: Document
    
    public init(receiver: Document) {
        self.document = receiver
    }
    
    public func execute() {
        
        print("Command:: ", #function)
        document.paste()
    }
}
